function calc(expression) {
    /* функция вычисляет выражение, записанное в польской нотации, в !expression-строке! */
    expression = format(expression) // expression = "*+1 (2.3 4.6)" -> expression = ["*", "+", "1", "2.3"]
    
} 

function format(expression) {
    let operationsAndDigits = /\-|\+|\/|\*|\^|\d+\.\d+|\d+/gm

}

function isInteger(num) {
    return (num ^ 0) === num;  //при поразрядовых операциях отбрасывается дробная часть, 2.7 ^ 0 === 2
}

function isFloat(n){
    return Number(n) === n && n % 1 !== 0;  //по остатку от деления
}

function isValid(arrayOfElements) {

}