const hash = (text) => {
  return text.split('').reduce((acc, char) => {
    return acc + char.charCodeAt(0)
  }, 0)
}

export default hash
