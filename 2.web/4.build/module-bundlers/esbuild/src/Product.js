class Product {
  constructor(name, description, price, stock = 0) {
    this.id = crypto.randomUUID()
    this.name = name
    this.description = description
    this.price = price
    this.stock = stock
  }
}

module.exports = Product
