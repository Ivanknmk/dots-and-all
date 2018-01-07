module MonoidalParse where

data B = B !Int !Int deriving (Eq, Show)

--    )))   (((((
--  B 3 0   B 0 5
--    a b     c d

--  (((((     )))
--  B 0 5   B 3 0
--    a b     c d
 
instance Monoid B where
  mempty = B 0 0
  mappend (B a b) (B c d)
    | b <= c = B (a + c - b) d
    | otherwise = B a (d + b - c)

parse '(' = B 0 1
parse ')' = B 1 0
parse _   = B 0 0

balanced xs = foldMap parse xs

dogYrs :: Integer -> Integer
dogYrs x
  | x <= 0    = 0
  | x <= 1    = x * 15
  | x <= 2    = x * 12
  | x <= 4    = x * 8
  | otherwise = x * 6
