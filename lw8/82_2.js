function calc(expression) {
    expression = expression.split(" ")
    const digits = []
    for(let i = expression.length; i !== -1; i--) {
        let firstOperand
        let secondOperand
        if(!isNaN(Number.parseFloat(expression[i]))) {
            digits.push(Number.parseFloat(expression[i]))
        } else if(expression[i] === "*" || expression[i] === "/" || expression[i] === "+" || expression[i] === "-" || expression[i] === "^") {
            if(digits.length < 2) return console.log("err not enough values in input expression")            
            firstOperand = digits.pop()
            secondOperand = digits.pop()
            if(expression[i] === "*") digits.push(firstOperand * secondOperand)
            if(expression[i] === "/") digits.push(firstOperand / secondOperand)
            if(expression[i] === "+") digits.push(firstOperand + secondOperand)
            if(expression[i] === "-") digits.push(firstOperand - secondOperand)
            if(expression[i] === "^") digits.push(Math.pow(firstOperand, secondOperand))      
        }
    }    
    for(const num of digits) {
        console.log(num)
    }
}