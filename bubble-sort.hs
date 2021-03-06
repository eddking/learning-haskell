
module BubbleSort where

sort :: Ord a => [a] -> [a]
sort [] = []
sort [x] = [x]
sort xs = sort (init p) ++ [last p]
   where p = pass xs
-- The implementation of `++` means we're traversing this list way more than
-- you should have to do for bubble sort. but conceptually, this is correct

pass :: Ord a => [a] -> [a]
pass [] = []
pass [x] = [x]
pass (x:y:xs)
  | x < y = x : pass (y:xs)
  | otherwise = y : pass (x:xs)
