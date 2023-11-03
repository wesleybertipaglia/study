/*
    # Inheritance
    Objects inherit properties and methods of their parents
*/

class Vehicle {
    constructor(name, color, wheels) {
        this.name = name
        this.color = color
        this.wheels = wheels
    }

    drive() {
        console.log("Driving...")
    }
    parking() {
        console.log("Parking...")
    }
}

class Car extends Vehicle {
    constructor(name, color) {
        super()
        this.name = name
        this.color = color
        this.wheels = 4
    }
}

class Bike extends Vehicle {
    constructor(name, color) {
        super()
        this.name = name
        this.color = color
        this.wheels = 2
    }
}

const porsche = new Vehicle("Porsche", "Black", 4)
const ferari = new Car("Ferrari", "Red")
const ducati = new Bike("Ducati", "Red")

console.log(`
    Vehicles in store
    Name                Color               Wheels
    ${porsche.name}     ${porsche.color}    ${porsche.wheels}
    ${ferari.name}      ${ferari.color}     ${ferari.wheels}
    ${ducati.name}      ${ducati.color}     ${ducati.wheels}
`)

ferari.drive()