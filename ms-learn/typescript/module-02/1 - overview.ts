//* Overview of types in TypeScript

let x: number; //* Explicity declares x as a nmber type
let y = 1; //* Implicity declares y as a number type
let z; //* Declares z without initializing it

//* Primitive types
let myBool: boolean;
let myNum: number;
let myString: string;

//* Boolean 
let flag: boolean;
let yes = true;
let no = false;

//* Number
let a: number;
let b = 0;
let c: number = 123.456;
let big: bigint = 100n;

//* String
let s: string;
let empty = "";
let firstName: string = "Wesley";
let sentence: string = `My name is ${firstName}`;

//* Arrays
let list: number[] = [1, 2, 3];
let anotherList: Array<number> = [4, 5, 6];

//* Enums
enum ContractStatus {
    Permanent, // by default starts in 0 
    Temp,
    Apprentice
}

//* Any
let randomValue: any = 10;
randomValue = "Wesley";
randomValue = true;

//* Unknown (raise type check errors)
let unknownValue: unknown = 10;
unknownValue  = true;
unknownValue = "Wesley";

//* Union
let union: number | boolean;
union = 20;
union = true;

//* Tuples
let person: [string, number] = ['Wesley', 24];
let music: [string, number] = ['Quando a Gira Giro', 10]