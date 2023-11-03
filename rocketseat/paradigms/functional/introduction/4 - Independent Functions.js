/*
    Independent functions
    - Must have arguments
    - Need to return something
    - Stateless
    - Immutable data
    - Do not use loops (for, while, etc.)
*/

// Exemple
const random = (number, Math) => 
    Math.floor(Math.random() * number)

const factorial = x => {
    if (x === 0) {
        return 1
    }

    return x * factorial(x - 1) // recursive
}