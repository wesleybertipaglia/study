const { inherits } = require("util") // take the inherits func from util module
const { EventEmitter } = require("events") // take the eventemitter func from events module

// constructor function
function Character(name) {
    this.name = name
}

inherits(Character, EventEmitter) // character receive the event emitter funcv

const jimmyYang = new Character("Jimmy O. Yang")
jimmyYang.on("looking for Pied Piper", () => console.log(`~ ${jimmyYang.name}: This is Pied Piper`))

console.log("~ Person: I'm looking for Pied Piper, you know where it is?\n")
jimmyYang.emit("looking for Pied Piper")