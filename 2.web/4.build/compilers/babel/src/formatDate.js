function formatDate(date, format = 'YYYY-MM-DD') {
  const year = date.getFullYear()
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const day = String(date.getDate()).padStart(2, '0')

  format = format.replace('YYYY', year)
  format = format.replace('MM', month)
  format = format.replace('DD', day)

  return format
}

export default formatDate
