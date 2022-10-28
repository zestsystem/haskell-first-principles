-- Review of types
-- 1. d
-- 2. b
-- 3. d
-- 4. b

-- Reviewing currying

    cattyConny :: String -> String -> String
    cattyConny x y = x ++ " mrow " ++ y

    flippy :: String -> String -> String
    flippy = flip cattyConny

    appedCatty :: String -> String
    appedCatty = cattyConny "woops"

    frappe :: String -> String
    frappe = flippy "haha"

-- 1. "woops mrow woohoo!"
-- 2. "1 mrow haha"
-- 3. "woops mrow 2 mrow haha"
-- 4. "woops mrow blue mrow haha"
-- 5. "pink mrow haha mrow green mrow whoops mrow blue"
-- 6. "are mrow Pugs mrow awesome"

-- Recursion
-- 1. Write out the steps for reducing dividedBy 15 2 to its final answer
--    according to the Haskell code.
--
--    dividedBy 15 2
--          go  15 2  0
--          go  13 2  1
--          go  11 2  2
--          go   9 2  3
--          go   7 2  4
--          go   5 2  5
--          go   3 2  6
--          go   1 2  7
--              (7, 1)
--
-- 2. Write a function that recursively sums all numbers from 1 to n,
--    n beign the argument. So that if n was 5, you'd add 1 + 2 + 3 + 4 + 5
--    to get 15. The type should be (Eq a, Num a) => a -> a.
--
    addUpToN :: (Eq a, Num a) => a -> a
    addUpToN n = go n 0
        where
            go n count
             | n == 0 = count
             | otherwise = go (n - 1) (count + n)

-- 3. Write a function that multiplies two integral numbers using recursive
--    summation. The type should be (Integral a) => a -> a -> a
--
    multiply :: (Integral a) => a -> a -> a
    multiply a b = go a b 0
        where
            go a b count
             | a == 0 = count
             | otherwise = go (a - 1) b (count + b)

-- Fixing dividedBy
    data DividedResult = Result Integer | DividedByZero deriving Show

    dividedBy :: Integral a => a -> a -> DividedResult
    dividedBy num denom = go num denom 0
        where go n d count
               | d == 0 = DividedByZero
               | d < 0 = case dividedBy n (-d) of
                    DividedByZero -> DividedByZero
                    Result r -> Result (-r)
               | n < 0 = case dividedBy (-n) d of
                    DividedByZero -> DividedByZero
                    Result r -> Result (-r)
               | n < d = Result count
               | otherwise = go (n - d) d (count + 1)


-- McCarthy 91
    mc91 :: Integral a => a -> a
    mc91 n
      | n > 100 = n - 10
      | otherwise = mc91(mc91(n + 11))
