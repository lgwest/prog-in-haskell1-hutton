double x = x + x

quadruple x = double ( double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

mylast xs = head (reverse xs)
mylast2 xs = xs !! (length xs - 1)
myinit xs = reverse (tail (reverse xs))
myinit2 xs = reverse (drop 1 (reverse xs))
myinit3 xs = take (length xs -1) xs
