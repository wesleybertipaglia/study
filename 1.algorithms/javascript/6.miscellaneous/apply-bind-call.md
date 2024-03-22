# Apply, Bind and Call

call(), apply(), and bind() are methods available on all JavaScript functions that allow you to manipulate the value of this and pass arguments to the function when invoking it.

## Call

The call() method invokes a function with a specified this value and arguments provided individually.

```js
const obj1 = { name: 'John' }
const obj2 = { name: 'Jane' }

function greet(message) {
  console.log(message + ', ' + this.name)
}

greet.call(obj1, 'Hello') // Output: Hello, John
greet.call(obj2, 'Hi') // Output: Hi, Jane
```

## Apply

The apply() method is similar to call(), but it accepts arguments as an array.

```js
const obj = { name: 'John' }

function greet(message1, message2) {
  console.log(message1 + ', ' + this.name + ' ' + message2)
}

greet.apply(obj, ['Hello', 'How are you?']) // Output: Hello, John How are you?
```

## Bind

The bind() method returns a new function with a specified this value and initial arguments.

```js
const obj = { name: 'John' }

function greet(message) {
  console.log(message + ', ' + this.name)
}

const boundGreet = greet.bind(obj)
boundGreet('Hello') // Output: Hello, John
```
