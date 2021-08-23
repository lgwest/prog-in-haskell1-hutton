-- 1
-- :t ['a','b','c'] :: [Char]
-- :t ('a','b','c') :: (Char, Char Char)
-- :t [(False, '0') :: (True, '1')]
-- :t ([False, True],['0','1']) :: ([Bool],[Char])
-- :t [tail, init, reverse] :: [[a] -> [a]]


-- 2
-- [True,False] :: [Bool]
-- [[1,2],[3,4,5]] :: [[Int]]
-- add x y z = x+y+z :: Int -> Int -> Int -> Int
-- copy xs = (xs, xs) :: a -> (a, a)
-- apply f x = f x :: (a -> b) -> a -> b
--     ex: apply tail [1,2,3,4] -> [2.3.4]

-- 3
-- second xs = head(tail xs) :: [a] -> a
-- swap (x,y) = (y,x) :: (a,b) -> (b,a)
-- pair x y = (x,y) :: a -> b -> (a, b)
-- double x = x*2 :: Num a => a -> a
-- palindrome xs = reverse xs == xs :: Eq a => [a] -> Bool

-- 4 done

-- 5 It limits a function to return Bool, 
--   it is only feasible for properites or predicates functions.
--   page 75, a filter function is a predicate or property function
--   (see notes for Function Types, FP5 13:03)
