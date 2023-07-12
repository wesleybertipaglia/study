//* Interfaces
interface Employee {
    firstName: string;
    lastName: string;
    fullName(): string;
}

let wesley: Employee = {
    firstName: "Wesley",
    lastName: "Bertipaglia",
    fullName(): string {
        return this.firstName + " " + this.lastName;
    }
}

interface IceCream {
    flavor: string;
    scoops: number;
}

let myIceCream: IceCream = {
    flavor: 'Chocolate',
    scoops: 3
}
console.log(myIceCream.flavor);

//* Extends an Interface
interface Sundae extends IceCream {
    sauce: 'Chocolate' | 'Caramel' | 'Strawberry';
    nuts?: boolean;
    whippedCream?: boolean;
}

let mySundae: Sundae = {
    flavor: 'Vanilla',
    scoops: 2,
    sauce: 'Caramel',
    nuts: true
}