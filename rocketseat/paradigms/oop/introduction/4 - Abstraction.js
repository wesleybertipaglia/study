/*
    # Abstract Class (or Superclass)
    Template or identity of a class that will be implemented in the future
    The implementation of its methods will only be done in the child classes
*/

class Screw {
    constructor() {
        if (this.constructor === Screw) {
            throw new Error("This class cannot be implemented")
        }
    }

    get type() {
        throw new Error("The method 'type()' need to be implemented")
    }
}

class Screwdriver extends Screw {
    constructor() {
        super()
    }

    get type() {
        return "Screwdriver"
    }
}

class Philips extends Screw {
    constructor() {
        super()
    }

    get type() {
        return "Philips"
    }
}

// create some objects
const philips = new Philips
const screwdriver = new Screwdriver

console.log(philips.type, screwdriver.type)