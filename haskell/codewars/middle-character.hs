module Codewars.Getmiddle where

getMiddle :: String -> String
getMiddle [] = ""
getMiddle [x] = [x]
getMiddle s = giveMeMid s findMid

findMid :: String -> (Int,Bool)
findMid s = ( mid , even (length s) )
  where mid = length s `div` 2

giveMeMid :: String -> (String -> (Int,Bool)) -> String
giveMeMid s findMid =
  if even 
    then [s !! (pos-1)] ++ [s !! pos]
    else [s !! pos]
  where (pos, even) = findMid s
