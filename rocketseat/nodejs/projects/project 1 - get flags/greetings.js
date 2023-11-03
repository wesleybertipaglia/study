const getFlagValue = require("./flags")
console.log(`Hello ${getFlagValue('--name')}. ${getFlagValue('--greetings')}`)

// run tthe code below to test the app
/*
    node greetings --greetings "Hello" --name "Wesley"
*/