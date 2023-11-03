// cancel a interval
const timeOut = 1000
const executing = () => console.log("Executing!")

const interval = setInterval(executing, timeOut)
const cancelInterval = () => {
    clearInterval(interval)
    console.log("\nInterval canceled!")
}

setTimeout(() => cancelInterval(), 4000)