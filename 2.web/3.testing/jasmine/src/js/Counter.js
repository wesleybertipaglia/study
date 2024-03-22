const Counter = (
  counterValue,
  incrementButton,
  decrementButton,
  resetButton
) => {
  let count = 0

  if (incrementButton != undefined)
    incrementButton.addEventListener('click', () => {
      count++
      counterValue.innerHTML = count
    })

  if (decrementButton != undefined)
    decrementButton.addEventListener('click', () => {
      count--
      counterValue.innerHTML = count
    })

  if (resetButton != undefined)
    resetButton.addEventListener('click', () => {
      count = 0
      counterValue.innerHTML = count
    })
}

export default Counter
