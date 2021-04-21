function calc(expression) {
  
  /* функция вычисляет выражение, записанное в польской нотации, в !expression-строке! */

  if (typeof expression !== "string" || !isValid(expression)) return "ERR! Unexpected symbols!";
  if (expression === "") return "Opps... nothing happend";
  if (!areBracketsValid(expression)) return "ERR not enough brackets";

  elements = prepare(expression);
  let digits = [];

  for (let i = elements.length - 1; i !== -1; i--) {
    
    if (isInteger(Number(elements[i])) || isFloat(Number(elements[i]))) {

      digits.push(Number(elements[i]));

    } else if (isOperator(elements[i])) {

      if(digits.length < 2) {
        return `err missing value for "${elements[i]}" operator`;
      }

      firstOperand = digits.pop();
      secondOperand = digits.pop();
      if(elements[i] === "*") digits.push(firstOperand * secondOperand);
      if(elements[i] === "+") digits.push(firstOperand + secondOperand);
      if(elements[i] === "-") digits.push(firstOperand - secondOperand);
      if(elements[i] === "^") digits.push(Math.pow(firstOperand, secondOperand));
      if(elements[i] === "/") {
        if (secondOperand !== 0) {
          digits.push(firstOperand / secondOperand);
        } else {
          return "ERR! Attemption to divide by 0!";
        }  
      }

    }  
  }
  if (digits.length === 1) {
    if (isFloat(digits[0])) {
      return Number((digits[0]).toFixed(3));
    } else {
      return digits[0];
    }    
  } else {
    let lostDigitFirst = digits.pop();
    let lostDigitSecond = digits.pop();
    return `err missing operator for "${lostDigitFirst}" and "${lostDigitSecond}" values`;
  }
} 

function prepare(expression) {

  const expectedValues = /\d+\.\d+|\d+|(\-\d+)|\+|\-|\*|\//g;
  let elements = expression.match(expectedValues);

  if (elements !== null) {
    return elements;
  } else {
    elements = [];
    return elements;
  }

}

function isValid(expression) {

  const unExpectedSymbols = /[^\d+|\+|\-|\*|\/|\^| |\(|\)|\.|\d+\.\d+]/g;
  let errors = expression.match(unExpectedSymbols);

  if (errors === null) {
    return true;
  } else {
    return false;
  }

}

function areBracketsValid(expression) {
  
  let amount = 0;

  for (let i = 0; i !== expression.length; i++) {
    if (expression[i] === "(" || expression[i] === ")") amount++;
  }  
  if (amount % 2 === 0) {
    return true
  } else {
    return false
  }

}

function isInteger(num) {
    return (num ^ 0) === num;  //при поразрядовых операциях отбрасывается дробная часть, 2.7 ^ 0 === 2
}

function isFloat(n){
    return Number(n) === n && n % 1 !== 0;  //по остатку от деления
}

function isOperator(element) {

  let operators = ["+", "-", "*", "/", "^"];
  let isOperator = operators.indexOf(element) !== -1;

  if (isOperator) {
    return true;
  } else {
    return false;
  }

}