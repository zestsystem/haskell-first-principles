   import Data.List (sort)
-- Multiple Choice
-- 1. c
-- 2. b
-- 3. a
-- 4. c
-- 5. b

-- Does it typecheck?
-- 1.
-- data Person = Person Bool
--
-- printPerson :: Person -> IO()
-- printPerson person = putStrLn (show person)
--
-- Does it typecheck?   No

-- Fix
   data Person = Person Bool deriving Show
   printPerson :: Person -> IO()
   printPerson person = putStrLn (show person)

--2.
--data Mood = Blah
--   | Woot deriving Show
--
--settleDown x = if x == Woot
--                 then Blah
--                 else x
--
-- Does it typecheck? No

-- Fix
   data Mood = Blah
               | Woot deriving (Show, Eq)

   settleDown x  = if x == Woot
                    then Blah
                    else x
--3.
--a) Blah and Woot
--b) It will throw an error because Mood does not match Num a => a
--c) It will error because Mood has no instance of Ord


--4.
--type Subject = String
--type Verb = String
--type Object = String
--
--data Sentence =
--  Sentence Subject Verb Object
--  deriving (Eq,Show)
--
--  s1 = Sentence "dogs" "drool"
--  s2 = Sentence "Julie" "loves" "dogs"

-- Does it typecheck? Yes


   data Rocks = Rocks String deriving (Eq, Show)

   data Yeah  = Yeah Bool deriving (Eq, Show)

   data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- 1.
-- phew = Papu "chases" True
--
-- Does it typecheck? No. It's missing data constructors for Rocks and Yeah
-- fix
   phew = Papu (Rocks "chases") (Yeah True)

-- 2.
   truth = Papu (Rocks "chomskydoz") (Yeah True)
-- Does it typecheck? YES.
--
-- 3.
   equalityForall :: Papu -> Papu -> Bool
   equalityForall p p' = p == p'
-- Does it typecheck? YES.
--
-- 4.
-- comparePapus :: Papu -> Papu -> Bool
-- comaprePapus p p' = p > p'
-- Does it typecheck? No. Because Papu does not derive from Ord



-- Match the types
-- 1.
-- a) i :: Num a => a
--    i = 1
-- b) Try replacing the type signature with the following:
--    i :: a
--  This wil not work  because 1 is Num a => a and we cannot drop the typeclass
--  constraint
--
--  2.
--  a) f :: Float
--     f = 1.0
--  b) f :: Num a => a
--  This will not work. We cannot relax the contstraint to Num a => a has to be
--  Fractional a => a
--
--  3.
--  a) f :: Float
--     f = 1.0
--  b) f :: Fractional a => a
--  This will work.
--
--  4.
--  a) f :: Float
--     f = 1.0
--  b) f :: RealFrac a => a
--  This will work. Because RealFrac is more specific. We are making the type more specific.
--
--  5.
--  a) freud :: a -> a
--     freud x = x
--  b) freud :: Ord a => a -> a
--  This will work because we are making the type more specific.
--
-- 6.
-- a) freud' :: a -> a
--    freud' x = x
-- b) freud' :: Int -> Int
-- This will work because we are making the type more specific.
--
-- 7.
-- a) myX = 1 :: Int
--
--    sigmund :: Int -> Int
--    sigmund x =  myX
-- b) sigmund :: a -> a
-- This will not work. We cannot relax the constraint Int -> Int to a -> a
--
-- 8.
-- a) myX = 1 :: Int
--    sigmund' :: Int -> Int
--    sigMund' x = myX
-- b) sigmund' :: Num a => a -> a
-- This will not work. We cannot relax the constraint Int -> Int to Num a => a -> a
--
-- 9.
-- This works as we are making it more specific.
--
-- 10.
-- This works as sort expects ORd a => [a] -> [a]
--
-- 11.
-- This does not work. mySort exoects [Char] -> [Char]
--
--
-- Type-Kwon-Do Two: Electric Typealoo
-- 1.

   chk :: Eq b => (a -> b) -> a -> b -> Bool
   chk f a b = f a == b

   arith :: Num b
         => (a -> b)
         -> Integer
         -> a
         -> b
   arith f i a = f a + fromInteger i
