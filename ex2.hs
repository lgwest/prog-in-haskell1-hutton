-- 2
--  2^3*4 = (2^3)*4 = 32
--  2*3+3*4 = (2*3)+(3*4)
--  2+(3*(4^5))

-- 4 last
mylast xs = head (reverse xs)
mylast2 xs = xs !! n
  where
    n = length xs - 1

-- 5 init
myinit xs = reverse (tail (reverse xs))
myinit2 xs = take n xs
  where
    n = length xs - 1

