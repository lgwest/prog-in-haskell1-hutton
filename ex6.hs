
-- 1 factorial with negative arguments  TODO n<0?

fact :: Int -> Int
fact 0         = 1
fact n | n > 0 = n * fact(n-1)


-- 2 sumdown
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown(n-1)

-- 3