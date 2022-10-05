-- Determine the type
{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where

example = 1

x = 5
y = x + 5
-- 2
w = y * 10
-- 3
z y = y * 10
-- 4
f = 4 / y
-- 5
x1 = "Julie"
y1 = " <3 "
z1 = "Haskell"
f1 = x1 ++ y1 ++ z1



