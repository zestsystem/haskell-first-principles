bloodNa :: Integer -> String
bloodNa x
    | x < 135 = "too low"
    | x > 145 = "too high"
    | otherwise = "just right"

isRight :: (Num a, Eq a) => a -> a -> a -> String
isRight a b c
    | a ^ 2 + b ^ 2 == c ^ 2 = "RIGHT ON"
    | otherwise = "not right"

dogYrs :: Integer -> Integer
dogYrs x
    | x <= 0 = 0
    | x <= 1 = x * 15
    | x <= 2 = x * 12
    | x <= 4 = x * 8
    | otherwise = x * 6
