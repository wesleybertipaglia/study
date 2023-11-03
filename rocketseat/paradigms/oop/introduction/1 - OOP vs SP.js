/*
    Object Oriented Programming vs Structured Programming
*/

// Structured
let height = 50
let width = 60

function calculateArea() {
    return height * width
}

let area = calculateArea()

// Object Oriented programming
class Polygonum {
    constructor(height, width) {
        this.height = height
        this.width = width
    }

    get area() {
        return this.#calculateArea()
    }

    #calculateArea() {
        return this.height * this.width
    }
}

// create poligunum
let polygonum = new Polygonum(40,40)
console.log(polygonum)