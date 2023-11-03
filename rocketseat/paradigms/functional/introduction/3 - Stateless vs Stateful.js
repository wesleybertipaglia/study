// # Stateless vs Stateful

/*
    Stateless
    Does not retain any state or information between requests or function calls
*/
const square = n => n * n // dont save state


/*
    Stateful
    Retains state or information between requests or function calls
*/
let number = 2

function square() {
    return number * number
}

number = square()