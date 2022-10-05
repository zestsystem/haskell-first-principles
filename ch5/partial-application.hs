addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addTen :: Integer -> Integer
addTen = addStuff 5

fifteen :: Integer
fifteen = addTen 5

