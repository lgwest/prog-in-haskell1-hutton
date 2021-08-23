-- 1 calculate sum of 1^2+2^2+...+100^2
sum100sq :: Int
sum100sq = sum [x^2 | x <- [1..100]]

-- 2 grid n m
--grid Int Int :: [(Int,Int)]
grid :: (Num a, Num b, Enum a, Enum b) => a -> b -> [(a,b)]  -- ???
grid n m = [(x,y) | x <- [0..n], y <-[0..m]]

-- 3 square 2 = grid 2 2 but exclude the diagonal
square :: (Num a, Enum a, Eq a) => a -> [(a,a)]
square n = [(x,y) | (x,y) <- grid n n, x /= y]

-- 4 replicate 3 True returns  [True, True, True]
-- replicate n m = [m | _ <- [1..n]] ??

-- 5
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2+y^2==z^2]


-- 6
factors n = [x | x <- [1..n], n `mod` x == 0]
perfect n = sum (tail (reverse (factors n))) == n
perfects n = [x | x <- [1..n], perfect x]

-- 7 rewrite seven' with two nested comprehensions and a single generator
seven' = [(x,y)|x <-[1,2], y <- [3..4]]
--seven = concat [[(x,x+1)] | x <- [1..4]] ....
--seven = [(i,i) | i <- [1..4]i] ...

-- 8
--find k t = [v |(k',v) <- t, k == k'] ....
-- positions

-- 9 scalarproduct [1,2,3] [4,5,6] = 32
scalarproduct xs ys = sum [xs !! k * ys !! k | k <-[0..n-1]]
  where n = length xs
sp2 xs ys = sum [x*y | (x,y) <- zip xs ys]

-- 10 caesar cipher that handle upper case
-- caesar cipher, original lower case version:
