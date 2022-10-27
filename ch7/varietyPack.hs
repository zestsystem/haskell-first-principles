-- a) k :: (a, b) -> a
-- b) k2 :: String
-- c) k3


-- 2. Fill in the definion of the following function:

f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))
