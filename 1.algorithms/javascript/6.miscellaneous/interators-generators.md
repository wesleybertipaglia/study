# Iterators and Generators

## Iterators

Iterators are objects that enable you to traverse through a collection of data, such as arrays or strings, one element at a time. They provide a standard way to access the elements of a collection, regardless of its internal structure.

Iterators are defined by having a next() method that returns an object with two properties:

value: The current element being iterated over.
done: A boolean indicating whether the iteration has completed.
Here's a simple example of using an iterator to iterate over an array:

```js
const array = [1, 2, 3]
const iterator = array[Symbol.iterator]()

console.log(iterator.next()) // { value: 1, done: false }
console.log(iterator.next()) // { value: 2, done: false }
console.log(iterator.next()) // { value: 3, done: false }
console.log(iterator.next()) // { value: undefined, done: true }
```

## Generators

Generators are functions that enable you to define an iterative algorithm by writing a single function that can maintain its own state. They use the `function*` syntax and `yield` keyword.

Generators produce iterators, and they can pause and resume execution. They allow you to control the flow of iteration explicitly.

Here's an example of a generator function that generates a sequence of numbers:

```js
function* generateSequence() {
  let i = 0
  while (true) {
    yield i++
  }
}

const iterator = generateSequence()
console.log(iterator.next()) // { value: 0, done: false }
console.log(iterator.next()) // { value: 1, done: false }
console.log(iterator.next()) // { value: 2, done: false }
```
