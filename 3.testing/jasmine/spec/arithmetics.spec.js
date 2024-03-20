const { sum, sub, mul, div, mol, exp } = require("../src/arithmetic.js")

describe('Arithmetics operations', () => {
    it('should sum two numbers', () => {
        expect(sum(1, 2)).toBe(3);
    });

    it('should subtract two numbers', () => {
        expect(sub(2, 1)).toBe(1);
    });

    it('should multiply two numbers', () => {
        expect(mul(2, 3)).toBe(6);
    });

    it('should divide two numbers', () => {
        expect(div(6, 3)).toBe(2);
    });

    it('should return the remainder of a division', () => {
        expect(mol(6, 4)).toBe(2);
    });

    it('should return the result of raising a number to the power of another', () => {
        expect(exp(2, 3)).toBe(8);
    });
})