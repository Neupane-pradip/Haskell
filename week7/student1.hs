addpos :: [Integer] -> Integer
addpos = sum . filter (>0) . takeWhile (/= 0)
