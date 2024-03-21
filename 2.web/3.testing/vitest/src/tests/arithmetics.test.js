import { test, describe, it, expect } from 'vitest'
import { sum, sub, mul, div, mol, exp } from '../Arithmetic'


test('adds 1 + 2 to equal 3', () => {
    expect(sum(1, 2)).toBe(3)
})

test('subtracts 2 - 1 to equal 1', () => {
    expect(sub(2, 1)).toBe(1)
})

test('multiplies 2 * 3 to equal 6', () => {
    expect(mul(2, 3)).toBe(6)
})

test('divides 6 / 3 to equal 2', () => {
    expect(div(6, 3)).toBe(2)
})

test('modulus 7 % 3 to equal 1', () => {
    expect(mol(7, 3)).toBe(1)
})

test('exponent 2 ** 3 to equal 8', () => {
    expect(exp(2, 3)).toBe(8)
})