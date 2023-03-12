import {
  TextControl,
  Flex,
  FlexBlock,
  FlexItem,
  Button,
  Icon,
} from "@wordpress/components";
import "./index.scss";

//This is an immediately invoked function expression (note the syntax)
(function () {
  //This invokes every time data changes on the block editor as a whole
  //This is being used to block the update button if a correct answer is not selected on one or more quiz blocks
  let locked = false;

  wp.data.subscribe(function () {
    const blockResults = wp.data
      .select("core/block-editor")
      .getBlocks()
      .filter(function (block) {
        return (
          block.name == "quizblock/quiz-test" &&
          block.attributes.correctAnswer == undefined
        );
      });
    if (blockResults.length && locked == false) {
      locked = true;
      //lock the post
      wp.data.dispatch("core/editor").lockPostSaving("noanswer");
      //Add an error message
      wp.data
        .dispatch("core/notices")
        .createNotice(
          "error",
          "Please select a correct answer in the quiz block",
          {
            id: "noanswer",
            isDismissible: false,
          }
        );
    }
    if (!blockResults.length && locked) {
      locked = false;
      //unlock the post
      wp.data.dispatch("core/editor").unlockPostSaving("noanswer");
      //remove error message
      wp.data.dispatch("core/notices").removeNotice("noanswer");
    }
  });
})();

//Global scope function to register a block
wp.blocks.registerBlockType("quizblock/quiz-test", {
  title: "Are you paying attention?",
  icon: "smiley",
  category: "common",
  attributes: {
    question: {
      type: "string",
    },
    answers: {
      type: "array",
      default: [""],
    },
    correctAnswer: {
      type: "number",
      default: undefined,
    },
  },
  //This returns elements in editor
  edit: EditComponent,
  save: function (props) {
    //This returns elements on actual front-end
    return null;
  },
});

//Front End UI Component

//Wordpress UI Component
function EditComponent(props) {
  function handleQuestion(value) {
    props.setAttributes({ question: value });
  }

  function deleteAnswer(indexToDelete) {
    const newAnswers = props.attributes.answers.filter(function (x, index) {
      return index != indexToDelete;
    });
    props.setAttributes({ answers: newAnswers });

    if (indexToDelete == props.attributes.correctAnswer) {
      props.setAttributes({ correctAnswer: undefined });
    }
  }

  function markAsCorrect(index) {
    props.setAttributes({ correctAnswer: index });
  }

  return (
    <div className='edit-block'>
      <TextControl
        label={"Question:"}
        style={{ fontSize: "20px" }}
        value={props.attributes.question}
        onChange={handleQuestion}
      />
      <p style={{ fontSize: "13px", margin: "20px 0 8px 0" }}>Answers:</p>
      {props.attributes.answers.map(function (answer, index) {
        return (
          <Flex>
            <FlexBlock>
              <TextControl
                autoFocus={answer == undefined}
                value={answer}
                onChange={(newValue) => {
                  const newAnswers = props.attributes.answers.concat([]);
                  newAnswers[index] = newValue;
                  props.setAttributes({ answers: newAnswers });
                }}
              />
            </FlexBlock>
            <FlexItem>
              <Button onClick={() => markAsCorrect(index)}>
                <Icon
                  icon='marker'
                  className={
                    props.attributes.correctAnswer == index
                      ? "marker-correct"
                      : "marker"
                  }
                />
              </Button>
            </FlexItem>
            <FlexItem>
              <Button
                onClick={() => deleteAnswer(index)}
                className='mark-as-delete'
              >
                Delete
              </Button>
            </FlexItem>
          </Flex>
        );
      })}
      <Button
        onClick={() => {
          props.setAttributes({
            answers: props.attributes.answers.concat([undefined]),
          });
        }}
        variant='primary'
        style={{ marginTop: "10px" }}
      >
        Add another answer
      </Button>
    </div>
  );
}
