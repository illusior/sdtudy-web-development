function calc(expression) {
    /* функция вычисляет выражение, записанное в польской нотации, в !expression-строке! */
    expression = formate(expression) // expression = "*+1 2.3 4,6" -> expression = ['+', '1', '2.3', '4,6']
    const digits = []
    for(let i = expression.length; i !== -1; i--) {
        let firstOperand
        let secondOperand
        if(isInteger(Number(expression[i])) || isFloat(Number(expression[i]))) {
            digits.push(Number(expression[i]))
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
            return Number.parseFloat((digits[0]).toFixed(3))
        } else {
            return digits[0]
        }    
    } else return "err missing operators"
}    
function isInteger(num) {
    return (num ^ 0) === num;
}
function formate(expression) {
    const operations = /[\-\+\/\*\^]/gm
    const digits = /\d+\.\d+|\d+/gm
    const result = []
    let resultOfOperators = expression.match(operations)
    let resultOfDigits = expression.match(digits)
    for(element in resultOfOperators) {
        result.push(resultOfOperators[element])
    }
    for(element in resultOfDigits) {
        result.push(resultOfDigits[element])
    }
    return result
}
function isInteger(num) {
    return (num ^ 0) === num;  //при поразрядовых операциях отбрасывается дробная часть, 2.7 ^ 0 === 2
}
function isFloat(n){
    return Number(n) === n && n % 1 !== 0;  //по остатку от деления
}