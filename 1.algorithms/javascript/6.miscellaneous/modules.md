# Modules

## CommonJS

This is the module format initially designed for server-side JavaScript in Node.js. It uses require() to import modules and module.exports or exports to export variables, functions, or objects.

**Module exports**

```js
function add(a, b) {
  return a + b
}

// default
module.exports = add

// multiples
module.exports = {
  add: add,
}
```

**Module imports**

```js
const math = require('./math')
console.log(math.add(2, 3)) // Output: 5
```

## ES6 Modules (ESM)

ECMAScript 6 introduced native support for modules in JavaScript. It uses import to import modules and export to export variables, functions, or objects.

**Module exports**

```js
export function add(a, b) {
  return a + b
}
```

**Module imports**

```js
import { add } from './math.js'
console.log(add(2, 3)) // Output: 5
```
