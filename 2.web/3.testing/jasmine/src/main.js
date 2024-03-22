import Counter from './js/Counter.js'
import './scss/styles.scss'

function main() {
  const incrementButton = document.getElementById('increment')
  const decrementButton = document.getElementById('decrement')
  const resetButton = document.getElementById('reset')
  const counterValue = document.getElementById('counter')

  Counter(counterValue, incrementButton, decrementButton, resetButton)
}

main()
