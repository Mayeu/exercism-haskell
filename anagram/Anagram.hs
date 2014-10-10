module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor word = filter (anagram . normalise)
  where normalise s = let lowcase = map toLower s in  (lowcase, sort lowcase)
        (lw, sw)    = normalise word
        anagram (ls, ss) = isDifferent && isAnagram
          where isDifferent = lw /= ls
                isAnagram   = sw == ss
