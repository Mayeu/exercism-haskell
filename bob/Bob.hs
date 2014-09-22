module Bob (responseFor) where

import Data.Char (isUpper, isAlpha, isSpace)

responseFor :: String -> String
responseFor s
    | silence   = "Fine. Be that way!"
    | yell      = "Woah, chill out!"
    | question  = "Sure."
    | otherwise = "Whatever."
  where
    silence  = all isSpace s
    filtered = filter isAlpha s
    yell     = (filtered /= "") && all isUpper filtered
    question = last s == '?'
