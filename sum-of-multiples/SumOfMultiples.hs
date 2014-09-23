module SumOfMultiples
    ( sumOfMultiples
    , sumOfMultiplesDefault
    ) where

sumOfMultiples :: [Int] -> Int -> Int
sumOfMultiples divisors n = sum multiples
  where multiples = [x | x <- [0.. pred n], any (\y -> x `rem` y == 0) divisors ]

sumOfMultiplesDefault :: Int -> Int
sumOfMultiplesDefault = sumOfMultiples [3,5]
