module Grains
  ( square
  , total
  ) where


square :: Integer -> Integer
square x = 2^(x-1)

-- Solution using the sum of the geometric series a + ar + ar^2 + ... + ar^(n-1)
-- with a = 1, r = 2, n = 64
--
-- See: http://en.wikipedia.org/wiki/Geometric_series

total :: Integer
total = 2^(64 :: Int) - 1

-- Other solutions:
--
-- 1. unisg sum + map. Really readable
--
-- total :: Integer
-- total = sum $ map square [1..64]
--
-- 2. using foldl'
--
-- import Data.List
--
-- total :: Integer
-- total = foldl' (\ acc x -> square x + acc) 0 [1..64]
