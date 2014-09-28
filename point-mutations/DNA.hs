module DNA (hammingDistance) where

hammingDistance :: String -> String -> Int
hammingDistance s1 s2 = foldr count 0 $ zip s1 s2
  where count (a, b) acc
          | a /= b    = acc + 1
          | otherwise = acc
