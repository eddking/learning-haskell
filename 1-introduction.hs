{- vim: set fdm=marker fmr={,} fdl=0 : -}

module Introduction where

-- { Hello World

import Data.Char

hello = map $ chr . (+13) . ord

world = ";X__b\DC3TaW\DC3JX_Vb`X\DC3gb\DC3g[X\DC3;Tf^X__\DC3fghWl\DC3Zebhc\DC3 \DC3cTeg\DC3baX\DC4"

-- }

-- { Why learn haskell?
-- A Purely Functional programming language

factorial 1 = 1
factorial n = n * factorial (n-1)

-- Dont worry about any of the syntax yet, we'll get to that soon

-- you cant re-define things
-- a = 1
-- a = 2

-- in pure haskell there are no side effects
-- (referential transparrency)
-- This enables lots of implicit parallelism

-- Haskell is lazy! every computation is deferred until it's result is needed

-- This list is infinite
everyPositiveInteger = [1..]

-- Statically Typed, a very good type system with inference
-- }

-- { Basics

-- Ints
-- Floats
-- Booleans

-- Parentheses & Precedence
-- Remember parentheses dont denote function application!
-- }

-- { Calling Functions

-- succ 5
-- succ 'a'

-- min max

-- Infix functions ( * + - / )

-- div 5 2
-- 5 `div` 2
-- }

-- { Defining Functions
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- If
doubleSmall x = if x > 100 then x else x * 2
-- If is an expression, not a statement. you cant omit the else
-- }

-- { Lists

somePrimes = [3, 5, 7, 11, 13, 17]
nonPrimes = [4,6,8,9]

someNums = somePrimes ++ nonPrimes
-- caveat:  Concatenating lists requires traversal of the first list

helloConcat = 'h':'e':'l':'l':'o':' ':'w':'o':'r':'l':'d':[]
-- Actually [1,2,3] is syntatic sugar

-- Accessing a list
five = someNums !! 2

-- Strings are just lists of characters
hiya = "Hello " ++ "World"
fight = "ape" > "bear"

--Functions on lists

-- head
-- tail
-- last
-- init

-- length
-- null
-- reverse
-- take
-- drop
-- maximum
-- minimum
-- sum
-- product
-- elem
-- }

-- { Ranges
-- lists of things that can be defined using a range
oneToTwenty = [1..20]

alphabet = ['a'..'z']

evenNums = [2,4..100]
oddNums = [1,3..101]

-- Infinite lists
betterThanUnicode = ['A'..]

-- more list functions

rofl = cycle "lol "
unlucky = repeat 13
devil = replicate 3 6
-- }

-- { List Comprehensions
-- A way to construct & transform & filter lists

-- Oh btw, still lazy
yawn = head $ map (*2) [x | x <- [1..], x `mod` 7 > 4]

-- }

-- { Urgh, lets do somthing more interesting

-- Types?
-- Patterns
-- Function Composition?
-- Function Application?
-- Currying!
-- Pointfree style?
-- Lets write merge sort?

-- }
