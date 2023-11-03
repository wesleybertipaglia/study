// cancel a interval
const timeOut = 1000
const executing = () => console.log("Executing!")

let interval = setInterval(executing, timeOut)
clearInterval(interval)