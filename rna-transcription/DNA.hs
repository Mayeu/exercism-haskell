module DNA (toRNA) where

complement :: [(Char, Char)]
complement =
    [ ('G', 'C')
    , ('C', 'G')
    , ('T', 'A')
    , ('A', 'U')]

toRNA :: String -> String
toRNA = foldr tr []
    where tr nucleo acc = case lookup nucleo complement of
                               Just n  -> n:acc
                               Nothing -> error $ "Input error: no complement for " ++ show nucleo
