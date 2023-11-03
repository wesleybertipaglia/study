/*
    Function Composition (function chaining)
    - A function that pass the return as the input to another function
*/

// Exemple 1:
const people = ["Rafaela", "Diego", "Daniela", "Robert"]
const upperCasePeopleThatStartsWithD = people
.filter(person => person.startsWith("D"))
.map(dperson => dperson.toUpperCase()) // take the result of the filter function