
-- 4.1 New from old, call in ghci as Main.even
even :: Integral a => a -> Bool
even n = n `mod`2 == 0

-- split a list at the nth element
splitAt :: Int -> [a] -> ([a] -> [a])
splitAt n xs = (take n xs, drop n xs)
