/*
    Higher-order Functions
    - Can receive functions as arguments
    - Can return other functions
*/

// Exemple 1: Receive a function as argument
const numbers = [2, 4, 8, 16]
const square = n => n * n
const squaredNumbers = numbers.map(square) // the map fun receive the square fun as argument

// Exemple 2: Return other function with currying (apply the parcial function)
const pause = wait => fn => setTimeout(fn, wait) // return another function

const wait200 = pause(200)
wait200(() => console.log("waiting 200ms"))