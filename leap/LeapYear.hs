module LeapYear
( isLeapYear ) where

isLeapYear :: Int -> Bool
isLeapYear y = if y `mod` 4 == 0 && (y `mod` 100 /= 0 || y `mod` 400 == 0)
                  then True
                  else False
