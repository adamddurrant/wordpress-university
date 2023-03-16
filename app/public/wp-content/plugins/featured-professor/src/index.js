import "./index.scss";
import { useSelect } from "@wordpress/data";

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
  const allProfs = useSelect((select) => {
    return select("core").getEntityRecords("postType", "professor", {
      per_page: -1,
    }); // This pulls the professor data we need and returns a complete array
  });

  console.log(allProfs);

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
      <div>The HTML preview of the selected professor will appear here.</div>
    </div>
  );
}
