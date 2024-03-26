class Recipie {
  constructor(name, ingredients, steps) {
    this.name = name
    this.ingredients = ingredients
    this.steps = steps
  }

  getName() {
    return this.name
  }

  getIngredients() {
    return this.ingredients
  }

  getSteps() {
    return this.steps
  }

  setName(name) {
    this.name = name
  }

  setIngredients(ingredients) {
    this.ingredients = ingredients
  }

  setSteps(steps) {
    this.steps = steps
  }

  addIngredient(ingredient) {
    this.ingredients.push(ingredient)
  }

  addStep(step) {
    this.steps.push(step)
  }

  removeIngredient(ingredient) {
    this.ingredients = this.ingredients.filter((i) => i !== ingredient)
  }

  removeStep(step) {
    this.steps = this.steps.filter((s) => s !== step)
  }
}

export default Recipie
