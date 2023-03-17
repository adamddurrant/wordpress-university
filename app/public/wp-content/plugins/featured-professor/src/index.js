import "./index.scss";
import { useSelect } from "@wordpress/data";
import { useState, useEffect } from "react";
import apiFetch from "@wordpress/api-fetch";

wp.blocks.registerBlockType("ourplugin/featured-professor", {
  title: "Professor Callout",
  description:
    "Include a short description and link to a professor of your choice",
  icon: "welcome-learn-more",
  category: "common",
  attributes: {
    profID: {
      type: "string",
    },
  },
  edit: EditComponent,
  save: function () {
    return null;
  },
});

function EditComponent(props) {
  const [thePreview, setThePreview] = useState("");

  useEffect(() => {
    if (props.attributes.profID) {
      updateTheMeta();
      async function getPreviewData() {
        const response = await apiFetch({
          path: `/featuredProfessor/v1/getEditorHTML?profId=${props.attributes.profID}`,
          method: "GET",
        });
        //Once complete
        setThePreview(response);
      }
      getPreviewData();
    }
  }, [props.attributes.profID]);

  useEffect(() => {
    //This useEffect re-runs the updateTheMeta() function to make sure meta data is removed when blocks are deleted
    return () => {
      updateTheMeta();
    };
  }, []);

  function updateTheMeta() {
    // This function grabs the blocks on the edit screen and builds an array of professor post ID's to use as a post relationship reference
    const profsForMeta = wp.data
      .select("core/block-editor")
      .getBlocks()
      .filter((x) => x.name == "ourplugin/featured-professor")
      .map((x) => x.attributes.profID)
      .filter((x, index, arr) => {
        //This final filter makes sure only unique values are in the array to e.g if you were to add two profs blocks of the same prof
        return arr.indexOf(x) == index;
      });
    console.log(profsForMeta);
    wp.data
      .dispatch("core/editor")
      .editPost({ meta: { featuredProfessor: profsForMeta } });
  }

  const allProfs = useSelect((select) => {
    return select("core").getEntityRecords("postType", "professor", {
      per_page: -1,
    }); // This pulls the professor data we need and returns a complete array
  });

  if (allProfs == undefined) return <p> Loading... </p>; //Single line needs no {} - if false, the below JSX will be returned

  return (
    <div className='featured-professor-wrapper'>
      <div className='professor-select-container'>
        <select
          name=''
          id='profselect'
          onChange={(e) => {
            props.setAttributes({ profID: e.target.value });
          }}
        >
          <option value='select'>select a professor</option>
          {allProfs.map((prof) => {
            return (
              <option
                value={prof.id}
                selected={props.attributes.profID == prof.id}
              >
                {prof.title.rendered}
              </option>
            );
          })}
        </select>
      </div>
      <div dangerouslySetInnerHTML={{ __html: thePreview }}></div>
    </div>
  );
}
