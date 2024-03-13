import Game from "./models/Game.js"
import Question from "./models/Question.js"
import Layout from "./models/Layout.js"

function main() {
    const quiz = new Game(defineLayout(), questions);
    quiz.init();
}

function defineLayout() {
    const resultBox = document.getElementById("result");
    const scoreBox = document.getElementById("score");
    const questionBox = document.querySelector("#question #content");
    const optionsBox = document.getElementById("options");
    const previousButton = document.getElementById("previous-button");
    const nextButton = document.getElementById("next-button");
    const finishButton = document.getElementById("finish-button");
    const restartButton = document.getElementById("restart-button");

    return new Layout(
        resultBox,
        scoreBox,
        questionBox,
        optionsBox,
        previousButton,
        nextButton,
        finishButton,
        restartButton
    );
}

const questions = [
    new Question("Question 1", [
        "Wrong Answer 1",
        "Wrong Answer 2",
        "Wrong Answer 3",
        "Right Answer"
    ], "Right Answer"),
    new Question("Question 2", [
        "Wrong Answer 1",
        "Wrong Answer 2",
        "Wrong Answer 3",
        "Right Answer"
    ], "Right Answer"),
    new Question("Question 3", [
        "Wrong Answer 1",
        "Wrong Answer 2",
        "Wrong Answer 3",
        "Right Answer"
    ], "Right Answer")
]

main();