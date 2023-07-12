// Declare Interfaces
interface Loan {
    principal: number,
    interestRate: number //* Interest rate percentage
}

interface ConventionalLoan extends Loan {
    months: number //* total number of months
}

// Implement the interfaces
function calculateConventionalLoanPayment(loanTerms: ConventionalLoan): string {
    // Calculates the monthly payment of a conventional loan
    let interest: number = loanTerms.interestRate / 1200;   // Calculates the Monthly Interest Rate of the loan
    let payment: number;
    payment = loanTerms.principal * interest / (1 - (Math.pow(1/(1 + interest), loanTerms.months)));
    return 'The conventional loan payment is ' + payment.toFixed(2);
 }

 let conventionalPayment = calculateConventionalLoanPayment({principal: 30000, interestRate: 5, months: 180});
 console.log(conventionalPayment);