-- Which (two or more) of the following are equivalent?

-- 1. a, b, c,  d
-- 2. d
-- 3.
addOne = \x -> x + 1

-- a)
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1

-- b)
-- Rewrite this:
addFive x y = (if x > y then y else x) + 5

anonyAddFive = \x -> \y -> (if x > y then y else x) + 5
-- c)
mflip f x y = f y x
