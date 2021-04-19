function isPrimeNumber(n) {
    if (Array.isArray(n)) {
        for (let i = 0; i !== n.length; i++) {
            if (!isInteger(n[i])) return "err array has a wrong element"
        }
    }
    if (!isNaN(n)) {
        let isPrime
        for (let i = 2; i <= n; i++) {
            isPrime = true
            for (let j = 2; j < i; j++) {
                if (i % j === 0) {
                    isPrime = false
                    break
                }
            }
        }
        if (isPrime) {
            if (n < 10)                 return `   ${n} is  -  prime number`
            if (n >= 10 && n < 100)     return  `  ${n} is  -  prime number`
            if (n >= 100 && n < 1000)   return   ` ${n} is  -  prime number`
            if (n >= 1000 && n < 10000) return    `${n} is  -  prime number`

        } else {
            if (n < 10)                 return `   ${n} is not prime number`
            if (n >= 10 && n < 100)     return  `  ${n} is not prime number`
            if (n >= 100 && n < 1000)   return   ` ${n} is not prime number`
            if (n >= 1000 && n < 10000) return    `${n} is not prime number`
        }      
    } else if (Array.isArray(n)) {
        let result = ''
        for (let index in n) {
            result += `${isPrimeNumber(n[index])}\n `
        }
        return result      
    } else {
        return ` ${n} - not a number`
    }    
}
function isInteger(num) {
    return (num ^ 0) === num;
}
