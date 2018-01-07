{-# LANGUAGE NoMonomorphismRestriction #-}
module Poli where

example = 1

a = (* 9) 6 -- Num
b = head [(0,"doge"),(1,"kitteh")] -- Num, [Char]
c = head [(0 :: Integer ,"doge"),(1,"kitteh")] -- Integer, [Char] 
d = if False then True else False -- Bool
e = length [1, 2, 3, 4, 5] -- Int 
f = (length [1, 2, 3, 4]) > (length "TACOCAT") -- Bool

x = 5
y = x+5
w = y * 10
z y = y * 10
i = 4 / y

fH :: Ord a => a -> a -> Bool
fH x1 x2 = if (x1 > x2) then True else False

hS :: (a,a) -> a
hS (x,y) = y

r :: [a] -> [a]
r (x:xs) = xs
r x = []

co :: (b -> c) -> (a -> b) -> a -> c
co b2c a2b a = b2c . a2b a
