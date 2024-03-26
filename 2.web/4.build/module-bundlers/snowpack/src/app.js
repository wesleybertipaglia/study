import hash from './scripts/hash.js'
import createConfetti from './scripts/confetti.js'

function main() {
  const text = 'Hello, World!'
  console.log(`Hash of ${text} is ${hash(text)}`)

  const canvas = document.createElement('canvas')
  document.body.appendChild(canvas)

  const buttonCanvas = document.createElement('button')
  buttonCanvas.innerText = 'Create Confetti'
  buttonCanvas.onclick = () => createConfetti(canvas)
  document.body.appendChild(buttonCanvas)
}

main()
