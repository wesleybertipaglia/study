import confetti from 'canvas-confetti'

function createConfetti(canvas) {
  confetti.create(canvas, {
    resize: true,
    useWorker: true,
  })({ particleCount: 200, spread: 200 })
}

export default createConfetti
