// Pure vs Impure functions

/*
    Pure functions
    - Does not need any external data
    - Arguments are not required
    - No external interference
    - Stateless
    - Immutable data
*/

// Exeple 1: the function does not depend on any external data
const calcCircunference = function(pi, radius) { // all the data was passed as parameter
    return pi * (radius + radius)
}

// Exemple 2: the function does not change the external data
const changePersonAge = (person, age) =>
    ({...person, age}) // return a new object

/*
    Impure functions
    - Opposite the pure function
*/

// Exemple 1: the function depends on Math, an external data
function calcCircunference(radius) {
    return Math.PI * (radius + radius) // math was not passed as parameter
}

// Exemple 2: the function is changing an external data
let person = {
    name: "Wesley",
    age: 20
}

function changeAge(age) {
    person.age = 24 // changing an external data
}