// # Imperative vs Declarative

/* 
    Imperative (how to do)
    Exemple:
*/
let number = 2

function square() {
    return number * number
}

number = square()

/*
    Declarative (what is need to do)
    Exemple:
*/
const square = n => n*n