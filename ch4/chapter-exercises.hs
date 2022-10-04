awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]
-- 3. Fix Broken Code
fixed = 6 `div` length [1, 2, 3]


-- 8. Palindrome

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x


-- 9
myAbs :: Integer -> Integer
myAbs x = if x > 0 then x else abs x


-- 10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f p1 p2 = (,) (snd p1, snd p2) (fst p1, fst p2)


-- Correcting syntax

-- 1.
x = (+)

lengthPlusOne xs = x  w 1
    where w = length xs


-- 2.
id x = x

-- 3.
fst':: (a, b) -> a
fst' pair = fst pair
