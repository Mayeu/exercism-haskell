module Grains
  ( square
  , total
  ) where

square :: Integer -> Integer
square x = 2^(x-1)

total :: Integer
total = foldl (\ acc x -> square x + acc) 0 [1..64]

-- Another solution for total
-- total :: Integer
-- total = sum $ map square [1..64]
