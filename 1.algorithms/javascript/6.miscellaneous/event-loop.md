# Event Loop

**Call Stack**: JavaScript is single-threaded, meaning it can only execute one piece of code at a time. The call stack is where function calls are queued for execution. When a function is called, it is added to the top of the call stack, and when it returns, it is removed from the stack.

**Event Queue**: Asynchronous operations, such as setTimeout, DOM events, or AJAX requests, are handled differently. Instead of blocking the execution, they are pushed to the event queue once they are ready to be executed.

**Event Loop**: The event loop constantly checks two things: the call stack and the event queue. If the call stack is empty, the event loop will take the first event from the queue and push it onto the call stack, effectively executing it. This process continues indefinitely.

Example:

```js
console.log('Start')

setTimeout(() => {
  console.log('Timeout callback')
}, 0)

console.log('End')
```

In this example, 'Start' and 'End' will be logged first, as they are synchronous and go straight to the call stack. Then, even though the setTimeout is set to 0 milliseconds, it still goes to the event queue. The event loop will eventually pick it up and execute it, logging 'Timeout callback'.
