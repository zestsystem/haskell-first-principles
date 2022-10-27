-- 1. d
-- 2. b
-- 3. b
-- 4. b
-- 5. a  *


-- Let's write code
-- 1. The following function returns the tens digit of an integral argument.
    tensDigit :: Integral a => a -> a
    tensDigit x = d
        where xLast = x `div` 10
              d     = xLast `mod` 10
-- a)
    tensDigitWithDivMod :: Integral a => a -> a
    tensDigitWithDivMod x  = d
        where (xLast, _) = x `divMod` 10
              (_ ,d) = xLast `divMod` 10
-- b) Yes. DivMod version has the same type
-- c)
    hunsD :: Integral a => a -> a
    hunsD x = d
        where (xLast, _) = x `divMod` 100
              (_, d) = xLast `divMod` 10

-- 2. Implement the function of the type a -> a -> Bool -> a once each
--    using a case expression and once with a guard.
--
--    Case Expression:
    foldBoolCase :: a -> a -> Bool -> a
    foldBoolCase x y bool = case bool of
        True -> x
        False -> y
--    Guard:
    foldBoolGuard :: a -> a -> Bool -> a
    foldBoolGuard x y bool
        | bool = x
        | otherwise = y

-- 3. Fill in the definion. Note that the first arugment to our function is
--    also a function which can be applied to values. Your second argument
--    is a tuple, which can be used for pattern matching.

    g :: (a -> b) -> (a, c) -> (b, c)
    g f (a, c)  = (f a, c)

-- 4. For this next exercise, you'll experiment with writing pointfree versions
--    of existing code. This involves some new information, so read the following
--    explanation carefully.

    roundTrip :: (Show a, Read b) => a -> b
    roundTrip a = read (show a)

    main = do
        print (roundTrip 4 :: Int)
        print (id 4)

-- a) Next, write a pointfree version of rountTrip.
    roundTripPF :: (Show a, Read a) => a -> a
    roundTripPF  = read  . show
