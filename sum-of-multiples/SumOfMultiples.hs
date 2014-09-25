module SumOfMultiples
    ( sumOfMultiples
    , sumOfMultiplesDefault
    ) where

sumOfMultiples :: [Int] -> Int -> Int
sumOfMultiples divisors n = sum $ filter (isMultipleOf) [0.. pred n]
  where
    isMultipleOf x = any (`divides` x) divisors
    a `divides` b = b `rem` a == 0

sumOfMultiplesDefault :: Int -> Int
sumOfMultiplesDefault = sumOfMultiples [3,5]
