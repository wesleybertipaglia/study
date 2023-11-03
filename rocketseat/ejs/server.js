const express = require("express")
const app = express() // create a express app

// set the express view engine (ejs)
app.set("view engine", "ejs") 

// create routes
app.get("/", function(req, res) {
    const advantages = [
        {
            "title": "Simple syntax",
            "text": "EJS uses a simple syntax that is easy to understand and learn. It is based on HTML and JavaScript, which makes it familiar to developers who already have experience with these languages."
        },
        {
            "title": "Easy integration",
            "text": "EJS can be easily integrated with Node.js and other web application frameworks like Express, making it a popular choice for building dynamic web applications."
        },
        {
            "title": "Supports JavaScript",
            "text": "EJS allows you to use JavaScript code directly in your templates, making it easy to create dynamic content and manipulate data."
        },
        {
            "title": "Versatility",
            "text": "EJS is a versatile templating language that supports a wide range of features, including loops, conditionals, and partials. This makes it easy to create reusable templates that can be used across multiple pages of your web application."
        },
        {
            "title": "Performance",
            "text": "EJS is fast and efficient, and it is optimized for rendering large amounts of data quickly. This makes it a good choice for building high-performance web applications."
        }
    ]

    res.render("index", {
        advantages: advantages,
    })
})

app.get("/about", function(req, res) {
    res.render("pages/about")
})

app.listen(8080)
console.log("Server is running.")