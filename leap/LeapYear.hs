module LeapYear
( isLeapYear ) where

-- isLeapYear, test if a year is a leap year
--
-- The idea is to `mods` the year with the list [4,100,400], and depending on
-- the pattern returned determine if the year is a leap one or not.
--
-- The rule is that a year is a leap year if its divisible by 4, but not by 100
-- unless it is also divisible by 400.

isLeapYear :: Int -> Bool
isLeapYear y = case (yearMods y) of (0:0:0:[]) -> True
                                    (0:0:xs)   -> False
                                    (0:xs)     -> True
                                    _          -> False
                where yearMods y = zipWith mod (repeat y) [4,100,400]
