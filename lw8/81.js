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
               return console.log(`${n} is prime number`)
        } else {
              return console.log(`${n} is not prime number`)
        }      
    } else if (Array.isArray(n)) {
        n.forEach(element => {
            isPrimeNumber(element)
        });
    } else {
        return console.log(`${n} - не число`)
    }    
}
