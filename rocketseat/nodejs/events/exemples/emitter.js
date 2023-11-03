// event emitter
const {EventEmitter} = require("events")
const ev = new EventEmitter()

// listening the event
ev.on("saySomething", (message) => {
    console.log("I heard you", message)
})

// emit the event
ev.emit("saySomething", "Wesley") 
ev.emit("saySomething", "Maria") 
ev.emit("saySomething", "Sarah") 