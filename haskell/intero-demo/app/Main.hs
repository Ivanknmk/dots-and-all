module Main where

import Lib

main :: IO ()
main = someFunc
--main = print (rvrs "Curry is awesome")

x = (+)
f xs = x w 1
  where w = length xs
