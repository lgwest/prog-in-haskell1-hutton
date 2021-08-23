-- TODO many error when loaded in ghci
-- 6.1 Basic concepts

fac1 :: Int -> Int
fac1 n = product [1..n]

fac2 :: Int -> Int
fac2 0 = 1
fac2 n = n * fac (n-1)

--(*) Int -> Int -> Int   TODO ????
m * 0 = 0
m * n = m + (m * (n - 1))

-- 6.2 Recursion on lists

prod :: Num a => [a] -> a
prod []     = 1
prod (n:ns) = n * prod ns

length :: [a] -> Int
length []     = 0
length (x:xs) = 1 + length xs

reverse :: [a] -> [a]
reverse []     = []
reverse (x:xs) = reverse xs ++ [x]

(++) :: [a] -> [a]
[]     ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)

-- assumes [a] is sorted list
insert :: Ord a => a -> [a] -> [a]
insert x []                 = [x]
insert x (y:ys) | x <= y    = x : y : ys  -- '|': se 4.3 guarded equations, sid 43.
                | otherwise = y : insert x ys

isort :: Ord a => [a] -> [a] 
isort []     = []
isort (x:xs) = insert x (isort xs)

-- 6.3 Multiple arguments

zip :: [a] -> [b] -> [(a,b)]
zip [] _ = []
zip _ [] = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys

drop :: n -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_:xs) = drop (n-1) xs

-- 6.4 Multiple recursion 

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

qsort :: Ord a [a] => [a]
qsort []     = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger  = [b | b <- xs, b > x]

-- 6.5 Mutual reqursions

even :: Int -> Bool
even 0 = True
even n = odd (n-1)

odd :: Int -> Bool
odd 0 = False
odd n = even (n-1)

evens :: [a] -> [a]
evens [] = []
evens (x:xs) = odds xs

odds :: [a] -> [a]
odds [] = []
odds (_:xs) = evens xs
