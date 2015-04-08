module MergeSort where

import qualified Data.List as L

sort :: Ord a => [a] -> [a]
sort [] = []
sort [x] = [x]
sort (x:xs) = (sort less) ++ x : (sort more)
      where (less, more) = L.partition (<x) xs

