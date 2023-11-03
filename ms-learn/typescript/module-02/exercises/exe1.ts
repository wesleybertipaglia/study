/*  
    EXERCISE 1
    TODO: Modify the code to add types to the variable declarations. 
    The resulting JavaScript should look the same as the original example when you're done. 
*/

let fName: string;
let lName: string;
let fullName: string;
let age: number;
let ukCitizen: boolean;

fName = 'Rebecca';
lName = 'Smith';
age = 42;
ukCitizen = false;
fullName = fName + " " + lName;

if (ukCitizen) {
    console.log("My name is " + fullName + ", I'm " + age + ", and I'm a citizen of the United Kingdom.");
} else {
    console.log("My name is " + fullName + ", I'm " + age + ", and I'm not a citizen of the United Kingdom.");
}