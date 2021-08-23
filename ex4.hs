-- 1 halve
halve :: [a] -> ([a], [a])
halve xs = (take n, drop n)
  where
    n = length xs `div` 2

-- 2 third
-- third :: [a] -> a
-- a, with head tail
third1 xs = head (tail (tail xs))
-- b, with list inexing
third2 = xs !! 3
-- c, pattern matching
third3 (_:_:x:[]) = x

-- 3 safetail
-- a: conditional expressions
safetail1 xs = if null xs then 
                 [] 
               else 
	         tail xs
-- b: guarded equations
safetail2 xs | null xs = []
             | otherwise tail xs
-- c: pattern matching
safetail3 [] = []
safetail3 (_:xs) = xs

-- 4 define (||) in four different ways with pattern matching
-- 4.1
(||) :: Bool -> Bool -> Bool
True  || True  = True
True  || Fales = True
False || True  = True
False || False = False
--4.2
False || False = False
_     || _     = True
-- 4.3
False || b = b
True§  || _ = True
-- 4.4

-- 5
(&&) a b = if a == True then
              if b == True then True
	      else False
	    else False

-- 6


-- 7

-- 8
