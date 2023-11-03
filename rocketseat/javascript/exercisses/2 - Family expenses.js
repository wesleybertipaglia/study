/*
    # Family expenses
    Make a algorithm that calculate the expenses of your family
*/

let family = {
    incomes: [],
    expenses: []
}

function sum(array) {
    let total = 0

    for(let value of array) {
        total += value
    }

    return total
}

function calculateBalance() {
    const totalIncomes = sum(family.incomes)
    const totalExpenses = sum(family.expenses)
    const balance = totalIncomes - totalExpenses
    let balanceStatus

    if(balance >= 0) {
        balanceStatus = "positive"
    } else {
        balanceStatus = "negative"
    }

    console.log(`Your balance is ${balanceStatus}: $${balance}`)
}

// initialize
family.incomes = [1800, 2500, 300, 150]
family.expenses = [100, 250, 170, 60, 10, 24, 500, 500, 600]
calculateBalance()