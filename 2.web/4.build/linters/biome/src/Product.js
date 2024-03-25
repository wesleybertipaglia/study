class Product {
  constructor(name, description, price, quantity) {
    this.name = name
    this.description = description
    this.price = price
    this.quantity = quantity
  }

  get total() {
    return this.price * this.quantity
  }

  addQuantity(quantity) {
    this.quantity += quantity
  }

  removeQuantity(quantity) {
    this.quantity -= quantity
  }

  updatePrice(price) {
    this.price = price
  }
}
