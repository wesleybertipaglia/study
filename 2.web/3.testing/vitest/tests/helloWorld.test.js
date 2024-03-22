import { describe, it, expect } from 'vitest'
import { HelloWorld } from '../src/js/HelloWorld'

describe('HelloWorld', () => {
  it('should return "Hello, World!"', () => {
    expect(HelloWorld()).toBe('Hello, World!')
  })
})
