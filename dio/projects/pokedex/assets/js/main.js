
const limitoffset = 0
const limit = 10
const url = `https://pokeapi.co/api/v2/pokemon?offset=${offset}&limit=${limit}`

fetch(url)
    .then((response) => {return response.json})
    .then((body) => {console.log(body)})
    .catch((error) => {console.log(error)})