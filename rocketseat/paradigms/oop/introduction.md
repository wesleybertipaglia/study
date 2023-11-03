# Object Oriented Programming

Object-oriented programming is a paradigm that emphasizes organizing code into objects and classes, with principles such as encapsulation, inheritance, and polymorphism. It also uses design patterns such as Factory Method, Adapter, and Observer to solve common problems. There are several object-oriented programming languages such as Java, C#, and Python, and concepts such as interfaces, constructors, and method overloading. Object-oriented programming has several benefits such as improved code organization and maintainability, code reusability, and easier testing, and is used in a variety of applications such as web development and video game development.

## Object-Oriented Programming Principles
- Encapsulation
- Abstraction
- Inheritance
- Polymorphism
- Composition

## Object-Oriented Design Patterns
- Creational patterns (e.g., Factory Method, Singleton)
- Structural patterns (e.g., Adapter, Decorator)
- Behavioral patterns (e.g., Observer, Strategy)

## Object-Oriented Programming Languages
- JavaScript (multiparadigms)
- PHP (multiparadigms)
- Java
- C#
- Python
- Ruby

## Object-Oriented Programming Concepts
- Classes and objects
- Inheritance and polymorphism
- Interfaces and abstract classes
- Constructors and destructors
- Method overloading and overriding

## Benefits of Object-Oriented Programming
- Improved code organization and maintainability
- Code reusability and modularity
- Better encapsulation and abstraction of data
- Reduced code complexity and easier testing

## Real-world Applications of Object-Oriented Programming
- Graphical user interfaces
- Video game development
- Web development
- Database management systems
- Mobile app development

## Concepts
### Objects
Objects have poperties and methods. Exemples:

    const books = [
        {
            title: "Book 1",
            category: "Science",
            author: "Mark",
            read: function () {
                console.log(`Reading ${this.title}`)
            }
        }
    ]

Some objects is more difficult to understand, because they are abstracts, like:
- Authentication
- Authorization

### Class
A class allows you to create multiple instanced objects. All objects created from a class inherit the class's prototype, as well as its properties and methods. Exemple:

    class Rectangle {
        constructor(width, height) {
            this.width = width;
            this.height = height;
        }

        area() {
            return this.width * this.height;
        }
    }

### Encapsulation
Encapsulation is a fundamental concept in object-oriented programming that refers to the practice of bundling data and behavior within a single unit, typically a class or an object. This helps to hide the implementation details of the class or object from the outside world, and provides a way to ensure that the data is accessed and modified in a controlled manner. Exemple: 

    const person = {
        name: 'John Doe',
        age: 30,
        getAge: function() {
            return this.age;
        },
        setAge: function(newAge) {
            this.age = newAge;
        }
    };

    console.log(person.getAge());