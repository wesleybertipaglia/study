/*
    # Create a function to transform Celsius to fahrenheit

    Utilize this math forms
    C = (F - 32) * 5/9
    F = C * 9/5 + 32
*/

let c, f

function transformDegree(degree) {
    const cExists = degree.toUpperCase().includes("C")
    const fExists = degree.toUpperCase().includes("F")

    degree = Number(degree.replace(degree[degree.length - 1], ""))

    if(!cExists && !fExists) {
        throw new Error("Degree not identified")
    } else if(!fExists) {
        f = degree * 9/5 + 32
        f = f + "F"
        console.log(`${degree}C to F: ${f}`)
    } else if(!cExists) {
        c = (degree - 32) * 5/9
        c = c + "C"
        console.log(`${degree}F to C: ${c}`)
    } 
}

try {
    transformDegree("32f")
    transformDegree("0c")
    transformDegree("10f")
    transformDegree("10c")
    transformDegree("50f")
    transformDegree("50c")
} catch (error) {
    console.log(error)
}