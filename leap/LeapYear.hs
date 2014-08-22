module LeapYear
( isLeapYear ) where

isLeapYear :: Int -> Bool
isLeapYear year = isDivisor 4 && ( not (isDivisor 100) || isDivisor 400)
    where isDivisor x = year `mod` x == 0
