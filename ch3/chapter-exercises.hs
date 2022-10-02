module Reverse where
-- Reading Syntax
-- REPL exercises..

-- Building Functions
s = "Curry is awesome"

yell s = s ++ "!"
fifthChar s = s !! 4
drop8Char s = drop 9 s


thirdLetter :: String -> Char
thirdLetter x = x !! 2


letterIndex :: Int -> Char
letterIndex x = s !! x

rvrs :: String -> String
rvrs s = drop 9 s ++ take 4 (drop 5 s) ++ take 5 s

-- Result: awesome is Curry


main :: IO()
main = print  $ rvrs s
