/*
    # Polymorphism
    It's when an object extends another object, but some characteristics must be different
*/

class Athete {
    constructor(name, sport, weight) {
        this.name = name
        this.sport = sport
        this.weight = weight
        this.category = this.defineCategory()
    }

    defineCategory() {
        if(this.weight <= 50) {
            return "Thin"
        }
        else if(this.weight <= 65) {
            return "Normal"
        }
        else {
            return "Fat"
        }
    }
}


class Fighter extends Athete {
    constructor(name, weight) {
        super()
        this.name = name
        this.sport = "Fight"
        this.weight = weight
        this.category = this.defineCategory()
    }

    defineCategory() {
        if(this.weight <= 50) {
            return "Light"
        }
        else if(this.weight <= 65) {
            return "Normal"
        }
        else {
            return "Heavy"
        }
    }
}

const gabriela = new Athete("Gabriela", "Swimming", 60)
const anderson = new Fighter("Anderson", 80)

console.log(`
    Our Athetles

    ${gabriela.name}    
    Sport: ${gabriela.sport}
    Category: ${gabriela.category}
    Weight: ${gabriela.weight}

    ${anderson.name}    
    Sport: ${anderson.sport}
    Category: ${anderson.category}
    Weight: ${anderson.weight}
`)