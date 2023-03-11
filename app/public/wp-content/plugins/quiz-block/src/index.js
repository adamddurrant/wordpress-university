import {
  TextControl,
  Flex,
  FlexBlock,
  FlexItem,
  Button,
  Icon,
} from "@wordpress/components";
import "./index.scss";

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
      default: ["red", "blue"],
    },
  },
  //This returns elements in editor
  edit: EditComponent,
  save: function (props) {
    //This returns elements on actual front-end
    return null;
  },
});

//Wordpress UI
function EditComponent(props) {
  function handleQuestion(value) {
    props.setAttributes({ question: value });
  }

  function deleteAnswer(indexToDelete) {
    const newAnswers = props.attributes.answers.filter(function (x, index) {
      return index != indexToDelete;
    });
    props.setAttributes({ answers: newAnswers });
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
              <Button>
                <Icon icon='marker' className='mark-as-correct' />
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
