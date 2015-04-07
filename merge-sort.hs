module MergeSort where

-- Merge sort by edd

sort :: Ord a => [a] -> [a]
sort [] = []
sort [x] = [x]
sort xs = merge (sort xa) (sort xb)
    where (xa, xb) = splitAt (length xs `div` 2) xs

-- splitting the list in half is probably slower than turning every
-- element into a singleton list but its nicer conceptually

merge :: Ord a => [a] -> [a] -> [a]
merge [] a = a
merge a [] = a
merge (a:as) (b:bs)
  | a < b = a : merge as (b:bs)
  | otherwise = b : merge (a:as) bs

