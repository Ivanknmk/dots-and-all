getMiddle :: String -> String
getMiddle "" = ""
getMiddle [a] = [a]
getMiddle [a,b] = [a,b]
getMiddle (_:x) = getMiddle (init x)
