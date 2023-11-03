// questions
const questions = [
    "What's your name? ",
    "What you learn today? ",
    "What make your happy today? ",
    "Anything make you unhappy today? ",
    "What you can make to improve your happiness? "
]

// ask a question
const ask = (index = 0) => {
    process.stdout.write(questions[index])
}

// answers
const answers = []

// listen the answers
process.stdin.on("data", data => {
    answers.push(data.toString().trim())

    if(answers.length < questions.length) {
        ask(answers.length)
    }
    else {
        console.log(answers)
        process.exit()
    }
})

process.on("exit", () => {
    console.clear()
    console.log(`
        Cool ${answers[0]}!
        That's your reflections:

        ${questions[1]}
        ${answers[1]}
        ${questions[2]}
        ${answers[2]}
        ${questions[3]}
        ${answers[3]}
        ${questions[4]}
        ${answers[4]}

        Comeback tomorrow to more reflections
    `)
})

// initialize app
console.log(`
    Welcome to the bestme app!
    This app is develop to help you in your developer journey.
    Let's make some reflections. \n
    ---------------------------------------------------------- \n
`)
ask()