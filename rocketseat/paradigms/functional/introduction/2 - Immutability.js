/*
    # Immutability
    A variable doesn't vary, if you want to change a variable, you need to create another variable
*/

// Exemple
const cart = {
    quantity: 2,
    total: 200
}

const newCart = {...cart, quantity: 3}

console.log(newCart)