//* Union and intersection types
let multiType: number | boolean;
multiType = 20;
multiType = true;

function add(x: number | string, y: number | string) {
    if(typeof x === 'number' && typeof y === 'number') {
        return x + y;
    }
    if (typeof x === 'string' && typeof y === 'string') {
        return x.concat(y);
    }
    throw new Error('Parameters must be numbers or strings');
}

console.log(add('one', 'two'));
console.log(add(1, 2));