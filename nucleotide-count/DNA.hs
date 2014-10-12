module DNA (count, nucleotideCounts) where

import Data.Map (Map, fromList, insertWith)

count :: Char -> String -> Int
count n s
  | checkNuc  = length $ filter (== n) s
  | otherwise = error ("invalid nucleotide '" ++ [n] ++ "'")
  where
    checkNuc = n `elem` "ACTG"

nucleotideCounts :: String -> Map Char Int
nucleotideCounts = foldr (\nuc -> insertWith (+) nuc 1 ) emptyMap
  where emptyMap = fromList [('A', 0), ('T', 0), ('C', 0), ('G', 0)]
