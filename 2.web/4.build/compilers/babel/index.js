import capitalize from './src/capitalize.js'
import deepClone from './src/deepClone.js'
import formatDate from './src/formatDate.js'
import isPrime from './src/isPrime.js'
import randomInRange from './src/randomInRange.js'
import square from './src/square.js'

function main() {
    console.log(capitalize('hello')) // Hello
    console.log(deepClone({ a: 1, b: { c: 2 } })) // { a: 1, b: { c: 2 } }
    console.log(formatDate(new Date('2020-01-01'), 'YYYY/MM/DD')) // 2020/01/01
    console.log(isPrime(7)) // true
    console.log(randomInRange(1, 10)) // 1 ~ 10
    console.log(square(2)) // 4
}

main()
