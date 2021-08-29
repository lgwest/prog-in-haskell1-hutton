primes = sieve [2..]

sieve (p:xs) = p : sieve [x | x <- xs, mod x p /= 0]

twin (x,y) = y == x+2

twins = filter twin (zip primes (tail primes))

