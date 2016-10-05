module FunctionSyntax where

-- Pattern Matching

name 'a' = "alexander"
name 'b' = "bashi"
name 'c' = "chris"
name 'd' = "dean"

-- name 'x'
-- restults in an exception

type Vector = (Double, Double)
-- This is a type synonym. the most simple way of making a new type
-- you can use functions that work on the underlying type.
-- sometimes this is used to give meaningful types to parameters

-- Guards
-- Let & where expressions

fizzbuzz x
   | fizz x && buzz x = "fizzbuzz"
   | fizz x = "fizz"
   | buzz x = "buzz"
   | otherwise = show x
   where fizz x = x `mod` 3 == 0
         buzz x = x `mod` 5 == 0


data Tree a = Node (Tree a) (Tree a) | Leaf a deriving Show

insert :: a -> Tree a -> Tree a
insert x (Node l r) = Node l (insert x r)
insert x (Leaf a) = Node (Leaf a) (Leaf x)

toArr (Node l r) = (toArr l) ++ (toArr r)
toArr (Leaf a) = [a]

