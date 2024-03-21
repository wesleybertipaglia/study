const Stack = require('../src/Stack');

describe('stack', () => {
    let stack;

    beforeEach(() => {
        stack = new Stack();
    });

    it('should be empty when created', () => {
        expect(stack.isEmpty()).toBe(true);
    });

    it('should can push to the top', () => {
        stack.push('a');
        expect(stack.items[0]).toBe('a');
    });

    it('should can pop off', () => {
        stack.push('a');
        const result = stack.pop();
        expect(result).toBe('a');
    });

    it.todo('should pass because its a todo');
});