const assert = require('assert')
const { sum, sub, mul, div, mol, exp } = require('../src/Arithmetics')

describe('Arithmetics', () => {
    it('should sum two numbers', () => {
        assert.equal(sum(1, 2), 3)
    })

    it('should subtract two numbers', () => {
        assert.equal(sub(2, 1), 1)
    })

    it('should multiply two numbers', () => {
        assert.equal(mul(2, 3), 6)
    })

    it('should divide two numbers', () => {
        assert.equal(div(6, 3), 2)
    })

    it('should return the remainder of a division', () => {
        assert.equal(mol(6, 4), 2)
    })

    it('should return the result of a number raised to the power of another', () => {
        assert.equal(exp(2, 3), 8)
    })
})
