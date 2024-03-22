class Question {
    constructor(content, answers, correctAnswer) {
        this.content = content
        this.answers = answers
        this.correctAnswer = correctAnswer
        this.userAnswer = ''
        this.alreadyAnswered = false
        this.gotItRight = false
    }

    reply(answer) {
        this.userAnswer = answer
        let isCorrect = this.userAnswer == this.correctAnswer

        if (!this.alreadyAnswered) {
            this.gotItRight = isCorrect
        }

        return this.gotItRight
    }
}

export default Question
