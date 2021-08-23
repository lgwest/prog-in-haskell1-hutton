
-- 1 factorial with negative arguments  TODO n<0?

fact :: Int -> Int
fact 0         = 1
fact n | n > 0 = n * fact(n-1)


-- 2 sumdown
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown(n-1)

-- 3 defin exponentiation ^
--(^) :: Int -> Int -> Int
--(^) n 0 = 1
--(^) n m = n * pow m-1

-- 4 euclid
euclid :: Int -> Int -> Int
euclid n m | n == m  = n
           | n < m   = euclid n (m-n)
           | n > m   = euclid (n-m) m

-- 5

-- 6a 
and :: [Bool] -> Bool
and (False:_) = False
and (b:bs) | b == True = and bs

-- 6b 
concat :: [[a]] ->[a]

-- 6c
