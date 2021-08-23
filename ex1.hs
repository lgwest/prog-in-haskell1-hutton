-- ch 1 exercises
-- 1, Give another calculation for the result of: double (double 2).

-- 2, Show that sum [x] = x for any number 4x
--    sum[x] = sum[x:[]] = x + sum([]) = x + 0 = x

-- 3, own product
myproduct1 [] = 1
myproduct1 xs = x*myproduct1 (tail xs)
  where
    x = head xs

myproduct2 [] = 1
myproduct2 (x:xs) = x*myproduct2 xs

myprod3 [] = 1
myprod3 xs = head xs * myprod3 (tail xs)

-- 4, reverse qsort
rqsort [] = []
rqsort (x:xs) = rqsort larger ++ [x] ++ rqsort smaller
  where
    smaller = [a | a <- xs, a <= x]
    larger = [b | b <- xs, b > x]

-- 5, modified qsort <= -> < means that [2,2,3,1,1] -> [1,2,3]
qsort2 [] = []
qsort2 (x:xs) = qsort2 smaller ++ [x] ++ qsort2 larger
  where
    smaller = [a | a <- xs, a < x]
    larger = [b | b <- xs, b > x]

