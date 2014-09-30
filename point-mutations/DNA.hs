module DNA (hammingDistance) where

hammingDistance :: String -> String -> Int
hammingDistance s1 s2 = sum $ zipWith count s1 s2
  where count a b = fromEnum (a /= b)
