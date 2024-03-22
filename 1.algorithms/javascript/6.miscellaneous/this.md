# This

In JavaScript, the this keyword is a special identifier that refers to the current execution context. Its value depends on how a function is called and where it is called.

## In a Method

When a function is called as a method of an object, this refers to the object that the method is called on.

```js
const obj = {
  name: 'John',
  greet: function () {
    console.log('Hello, ' + this.name)
  },
}

obj.greet() // Output: Hello, John
```

## In a Constructor Function

When a function is used as a constructor with the new keyword, this refers to the newly created instance.

```js
function Person(name) {
  this.name = name
}

const john = new Person('John')
console.log(john.name) // Output: John
```

## In an Event Handler

In an event handler function, this usually refers to the element that triggered the event.

```html
<button id="btn">Click Me</button>
```

```js
document.getElementById('btn').addEventListener('click', function () {
  console.log(this.textContent) // Output: Click Me
})
```

## Explicitly Bound

You can explicitly bind this to a specific value using methods like bind(), call(), or apply().

```js
function greet() {
  console.log('Hello, ' + this.name)
}

const person = { name: 'John' }
const boundGreet = greet.bind(person)
boundGreet() // Output: Hello, John
```

## In Global Scope

In the global scope, this refers to the global object (window in browsers, global in Node.js).

```js
console.log(this === window) // Output: true (in a browser)
```
