import hash from './scripts/hash.js'

function main() {
  const text = 'Hello, World!'
  console.log(`Hash of ${text} is ${hash(text)}`)
}

main()
