module Edit where

-- There is a list a of unique elements
-- list a has had one element removed and inserted elsewhere
-- resulting in list b
-- the function edit, reconstructs this edit from the two lists

edit :: (Num t, Eq a, Enum t) => [a] -> [a] -> (t, t)
edit a b =
  let first = dropWhileMatch $ zip3 a b [0..]
      last = dropWhileMatch $ reverse first
      (_, _, i) = head first
      (_, _, j) = head last
  in if insertion first then (j, i) else (i, j)

-- Ignore the index element for equality checks
tupleMatch :: Eq a => (a, a, t) -> Bool
tupleMatch (a, b, _) = a == b

dropWhileMatch :: Eq a => [(a, a, t)] -> [(a, a, t)]
dropWhileMatch a = dropWhile tupleMatch a

-- An insertion happned at this point, if the elements of b are shifted by 1
insertion :: Eq a => [(a, a, b)] -> Bool
insertion [] = False
insertion [_] = False
insertion (a:b:_) = first == second
  where (first, _ , _ ) = a
        ( _ , second , _ ) = b
