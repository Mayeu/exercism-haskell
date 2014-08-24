module DNA (toRNA) where

toRNA :: String -> String
toRNA = map tr
    where tr nucleo = case nucleo of
                           'G' -> 'C'
                           'C' -> 'G'
                           'T' -> 'A'
                           'A' -> 'U'
                           _   -> error $ "Input error: no complement for " ++ show nucleo
