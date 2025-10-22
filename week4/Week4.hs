-- file: Week4.hs
nextIsGreater :: [Integer] -> [Integer]
nextIsGreater []       = []
nextIsGreater [_]      = []
nextIsGreater (x:y:xs)
    | y > x     = x : nextIsGreater (y:xs)
    | otherwise =     nextIsGreater (y:xs)

