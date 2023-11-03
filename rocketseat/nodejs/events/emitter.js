const {EventEmitter} = require("events")
const ev = new EventEmitter()

// listening the event
ev.on("eventEx", (message) => {
    console.log("Heard event")
})

// emit the event
ev.emit("eventEx") 