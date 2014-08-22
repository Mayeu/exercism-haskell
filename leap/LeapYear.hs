module LeapYear
( isLeapYear ) where

isLeapYear :: Int -> Bool
isLeapYear y = 4 `isADivOf` y && ( not (100 `isADivOf` y) || 400 `isADivOf` y)
    where isADivOf x y = y `mod` x == 0
