distance1 :: String -> String -> Float
distance1 s1 s2
    | null s1 && null s2 = 0
    | otherwise = fromIntegral (diff s1 s2 + diff s2 s1) / fromIntegral (length s1 + length s2)
  where
    diff [] _ = 0
    diff (x:xs) ys
        | x `elem` ys = diff xs ys
        | otherwise   = 1 + diff xs ys
