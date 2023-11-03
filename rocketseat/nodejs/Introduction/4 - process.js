const { lstatSync } = require("fs")

// process
console.log(process)

// argv
console.log(process.argv)

// playing with argv
const firstName = process.argv[2]
const lastName = process.argv[3]

console.log(`Your name is ${firstName} ${lastName}`) // execute by passing your name