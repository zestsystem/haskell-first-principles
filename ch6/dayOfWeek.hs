data DayOfWeek =
   Mon | Tue | Weds | Thu | Fri | Sat | Sun
   deriving ( Show)
instance Eq DayOfWeek where
  Mon == Mon = True
  Tue == Tue = True
  Weds == Weds = True
  Thu == Thu = True
  Fri == Fri = True
  Sat == Sat = True
  Sun == Sun = True
  _ == _ = False

data Date =
   Date DayOfWeek Int
-- This is to say Friday is the best day
instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _ = GT
  compare _ Fri = LT
  compare _ _ = EQ


