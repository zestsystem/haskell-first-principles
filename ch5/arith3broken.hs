module Arith3Broken where

main :: IO()

main = do
      print $ 1 + 2  --dollar sign replaces parentheses (infix for function)
      putStrLn "10"
      print (negate  1)
      print((+) 0 blah)
      where blah = negate 1
