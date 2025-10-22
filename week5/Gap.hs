gap :: (Char, Char) -> Integer -> String -> Integer
gap _ _ [] = 0
gap _ _ [_] = 0
gap (c1,c2) g s@(x:xs)
    | length s <= fromIntegral g + 1 = 0
    | x == c1 && s !! (fromIntegral g + 1) == c2 = 1 + gap (c1,c2) g xs
    | otherwise = gap (c1,c2) g xs
