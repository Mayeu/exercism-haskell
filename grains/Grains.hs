module Grains
  ( square
  , total
  ) where

square :: Integer -> Integer
square x = 2^(x-1)

total :: Integer
total = foldl (\ acc x -> square x + acc) 0 [1..64]
