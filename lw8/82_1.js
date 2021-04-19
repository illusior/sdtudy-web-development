function calc(expression) {
    let digits = []
    for(let i = expression.length - 1; i > -1; i--) {
        if (expression[i].equals("+") ||
            expression[i].equals("-") ||
            expression[i].equals("*") ||
            expression[i].equals("/") ) {
                let a = Long.valueof(digits.pop())
                let b = Long.valueof(digits.pop())
                let temp = 0
                if (expression[i].equals("+")) { temp = a + b }
                else if (expression[i].equals("+")) { temp = a - b }
                else if (expression[i].equals("+")) { temp = a * b }
                else if (expression[i].equals("+")) { temp = a / b }
                digits.push(String.valueof(temp))
            
        } else digits.push(expression[i])
    }
    return Long.valueof(digits.pop())
}