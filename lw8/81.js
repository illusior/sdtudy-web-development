function isPrimeNumber(n) {
    let isPrime
    if (!isNaN(n)) {
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
            if (n >= 10) {
                return `${n} is     prime number`
            } else {
                return ` ${n} is     prime number`
            }
        } else {
            if (n >= 10){
                return `${n} is not prime number`
            } else {
                return ` ${n} is not prime number`
            }             
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
