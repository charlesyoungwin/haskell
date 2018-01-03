safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail xs = Just (tail xs)

safeLast :: [a] -> Maybe [a]
safeLast [] = Nothing
safeLast xs = Just (last xs)

safeInit :: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit xs = Just (Init xs)
