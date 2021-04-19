function calc() {

    this.solvePostFix = function(expression) {
        let result = []
        expression = expression.split(" ")
        for(let i = 0; i < expression.length; i++) {
            if(expression[i].isNumeric()) {
                result.push(expression[i])
            } else {
                let a = expression.pop()
                let b = expression.pop()
                if(expression[i] === "+") {
                    expression.push(parseInt(a) + parseInt(b))
                } else if(expression[i] === "-") {
                    expression.push(parseInt(b) - parseInt(a))
                } else if(expression[i] === "*") {
                    expression.push(parseInt(a) * parseInt(b))
                } else if(expression[i] === "/") {
                    expression.push(parseInt(b) / parseInt(a))
                } else if(expression[i] === "^") {
                    expression.push(Math.pow(parseInt(a), parseInt(b)))
                }
            }
        }
        return result.pop()
    }    
    
}
String.prototype.isNumeric = function() {
    return !isNaN(parseFloat(this)) && isFinite(this)
}