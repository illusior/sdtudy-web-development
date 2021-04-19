function calc(expression) {
    expression = expression.split(" ")
    const digits = []
    for(let i = expression.length; i !== -1; i--) {
        let firstOperand
        let secondOperand
        if(!isNaN(Number.parseFloat(expression[i]))) {
            digits.push(Number.parseFloat(expression[i]))
        } else if(expression[i] === "*" || expression[i] === "/" || expression[i] === "+" || expression[i] === "-" || expression[i] === "^") {
            if(digits.length < 2) return "err missing values"            
            firstOperand = digits.pop()
            secondOperand = digits.pop()
            if(expression[i] === "*") digits.push(firstOperand * secondOperand)
            if(expression[i] === "/") digits.push(firstOperand / secondOperand)
            if(expression[i] === "+") digits.push(firstOperand + secondOperand)
            if(expression[i] === "-") digits.push(firstOperand - secondOperand)
            if(expression[i] === "^") digits.push(Math.pow(firstOperand, secondOperand))      
        }
    } 
    if (digits.length === 1) {
        if (!isInteger(digits[0])) {
            return (digits[0]).toFixed(3)
        } else {
            return digits[0]
        }    
    } else return "err missing operators"
}    
function isInteger(num) {
    return (num ^ 0) === num;
}