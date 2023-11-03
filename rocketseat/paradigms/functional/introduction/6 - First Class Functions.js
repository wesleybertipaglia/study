/*
    Firsclass Functions
    - Can be assigned to a variable
    - Can be passed as arguments of other functions
    - Can be returned as results from functions
*/

// Exemples
const sumNumbers = (n1, n2) => console.log(n1 + n2) // asugned to a variable

const sayMyName = (name) => console.log(name) // asugned to a variable

function runTest() {console.log("Test: ok.")}
const runFuction = fn => fn()
runFuction(runTest) // passed as argument

function subNumbers(n1, n2) {
    return console.log(n1 - n2) // returned as a result
}