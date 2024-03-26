import Product from './src/Product'

function main() {
  console.log('Hello from esbuild!')
  const smartphone = new Product('Samsung', 'A good smartphone', 'U$ 299', 100)
  console.log('Your new smartphone: ', smartphone.name)
}

main()
