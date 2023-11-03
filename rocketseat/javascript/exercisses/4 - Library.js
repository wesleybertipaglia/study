/*
  # Searching Books  

  Make a app that count the total of books, authors and categories, and show each book
*/

let books = [
    {
        category: "Develpment",
        title: "Clean Code",
        author: "Robert Cecil Martin"
    },
    {
        category: "Develpment",
        title: "The Pragmatic Programmer",
        author: "Dave Thomas"
    },
    {
        category: "Develpment",
        title: "Code Complete",
        author: "Steve McConnell"
    },
    {
        category: "Science",
        title: "A Brief Historyy of Time",
        author: "Stephen Hawking"
    },
    {
        category: "Science",
        title: "A Short History of Nearly Everything",
        author: "Bill Bryson"
    },
    {
        category: "Science",
        title: "Cosmos",
        author: "Carl Sagans"
    },
]
let categories = [], authors = []

let totalBooks, totalCategories, totalAuthors

// show books
function showBooks() {
    for(let book of books) {
        console.log(book.title + "\nCategory: " + book.category + "\nAuthor: " + book.author + "\n")
    }
}

// take categories
function mapCategories() {
    for(let book of books) {
        if(!categories.includes(book.category)) {
            categories.push(book.category)
        }
    }
}

// take authors
function mapAuthors() {
    for(let book of books) {
        if(!authors.includes(book.author)) {
            authors.push(book.author)
        }
    }
}
function showAuthors() {
    for(let author of authors) {
        console.log(author)
    }
}

// count items 
function countItems() {
    totalBooks = books.length
    totalCategories = categories.length
    totalAuthors = authors.length
}
function showCategories() {
    for(let category of categories) {
        console.log(category)
    }
}

// welcome to the app
function welcome() {
console.log(`
Welcome to the books app
In our database we have:

- ${totalBooks} Books
- ${totalCategories} Categories
- ${totalAuthors} Authors

Take a look in our books:
`)
showBooks()
}

// initialize
function initialize() {
    mapCategories()
    mapAuthors()
    countItems()
    welcome()
}

initialize()
