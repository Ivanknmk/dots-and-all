module Chapter6 where

data DayOfTheWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving (Show)

data Date =
  Date DayOfTheWeek Int

instance Eq DayOfTheWeek where
  (==) Mon Mon   = True
  (==) Tue Tue   = True
  (==) Weds Weds = True
  (==) Thu Thu   = True
  (==) Fri Fri   = True
  (==) Sat Sat   = True
  (==) Sun Sun   = True
  (==) _ _       = False

instance Eq Date where
  (==) (Date weekday dayOfMonth)
       (Date weekday' dayOfMonth') =
    weekday == weekday' && dayOfMonth == dayOfMonth'

-- Eq instances

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn v)
       (TisAn v') =
    v == v'

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') =
    a == a' && b == b'

data StringOrInt =
    TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt _) (TisAString _) = False
  (==) (TisAString b) (TisAString b') = b == b'
  (==) (TisAnInt a) (TisAnInt a') = a == a'
  (==) (TisAString _) (TisAnInt _) = False

data EitherOr a b
  = Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  Hello x == Hello y = x == y
  Goodbye x == Goodbye y = x == y
  Hello _ == Goodbye _ = False
  Goodbye _ == Hello _ = False

instance Ord DayOfTheWeek where
 compare Fri Fri = EQ
 compare Fri _   = GT
 compare _ Fri   = LT
 compare _ _     = EQ



data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah deriving (Eq, Show)
