// cancel a timeOut
const timeOut = 3000
const finished = () => console.log("Finished!")

let timer = setTimeout(finished, timeOut)
clearTimeout(timer)