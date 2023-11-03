// execute a function after x milliseconds
const timeOut = 3000
const finished = () => console.log("Finished!")

setTimeout(finished, timeOut)
console.log("Executes First")