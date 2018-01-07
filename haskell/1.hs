module HB where

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

add' :: Int -> Int -> Int
add' x y = x+y
