class Game {
    constructor(layout, questions) {
        this.score = 0
        this.questions = questions
        this.questionsCount = questions.length
        this.currentQuestionIndex = 0
        this.finalMessage = ''
        this.layout = layout
    }

    init() {
        this.defineButtons()
        this.display()
        this.layout.resultBox.style.display = 'none'
    }

    defineButtons() {
        this.layout.nextButton.addEventListener('click', this.nextQuestion)
        this.layout.previousButton.addEventListener(
            'click',
            this.previousQuestion
        )
        this.layout.finishButton.addEventListener('click', this.finish)
        this.layout.restartButton.addEventListener('click', this.restart)
    }

    display() {
        this.displayScore()
        this.displayResult()
        this.displayQuestion()
        this.displayButtons()
    }

    displayResult() {
        let result = this.layout.resultBox

        if (this.finished) {
            result.style.display = 'block'
        } else {
            result.style.display = 'none'
        }
    }

    displayScore() {
        this.layout.scoreBox.innerHTML = `${this.score} / ${this.questions.length}`
    }

    displayQuestion() {
        const question = this.questions[this.currentQuestionIndex]
        this.layout.questionBox.innerHTML = question.content
        this.layout.optionsBox.innerHTML = ''

        question.answers.forEach((option) => {
            this.displayOption(question, option)
        })
    }

    displayOption(question, option) {
        const optionButton = document.createElement('button')
        optionButton.classList.add('option-button')
        const optionContent = document.createTextNode(option)

        optionButton.addEventListener('click', () => {
            question.reply(option)

            if (!question.alreadyAnswered) {
                if (question.gotItRight) {
                    this.score += 1
                    optionButton.classList.add('correct-option')
                } else {
                    optionButton.classList.add('wrong-option')
                }
            }

            question.alreadyAnswered = true
            this.displayScore()
        })

        optionButton.appendChild(optionContent)
        this.layout.optionsBox.appendChild(optionButton)
    }

    displayButtons() {
        let previous = this.layout.previousButton
        let next = this.layout.nextButton
        let restart = this.layout.restartButton
        let finish = this.layout.finishButton

        previous.style.display = 'none'
        next.style.display = 'none'
        restart.style.display = 'none'
        finish.style.display = 'none'

        if (this.currentQuestionIndex === 0) {
            next.style.display = 'block'
        } else if (
            this.currentQuestionIndex > 0 &&
            this.currentQuestionIndex < this.questions.length - 1
        ) {
            previous.style.display = 'block'
            next.style.display = 'block'
        } else if (this.currentQuestionIndex === this.questions.length - 2) {
            previous.style.display = 'block'
            restart.style.display = 'block'
        } else {
            if (!this.finished) {
                finish.style.display = 'block'
            } else {
                restart.style.display = 'block'
            }
        }
    }

    nextQuestion = () => {
        this.currentQuestionIndex++
        this.display()
    }

    finish = () => {
        let badge

        switch (this.score) {
            case this.questionsCount:
                badge = `Congragulations, you rock it! 👑`
                break

            case 0:
                badge = `Oops, not this time 😓`
                break

            default:
                badge = `Congragulations, you're incredible! 🎉`
                break
        }

        this.layout.resultBox.innerHTML = badge

        this.finished = true
        this.displayResult()
        this.displayButtons()
    }

    restart = () => {
        this.score = 0
        this.currentQuestionIndex = 0
        this.finished = false

        this.questions.forEach((question) => {
            question.alreadyAnswered = false
            question.gotItRight = false
        })

        this.display()
    }
}

export default Game
