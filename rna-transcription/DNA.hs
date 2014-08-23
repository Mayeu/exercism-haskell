module DNA (toRNA) where

toRNA :: String -> String
toRNA = foldl transcribe []
    where transcribe acc 'G' = acc ++ "C"
          transcribe acc 'C' = acc ++ "G"
          transcribe acc 'T' = acc ++ "A"
          transcribe acc 'A' = acc ++ "U"
