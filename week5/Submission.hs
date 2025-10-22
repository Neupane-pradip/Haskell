
-- distance1
distance1 :: String -> String -> Float
distance1 s1 s2
    | null s1 && null s2 = 0
    | otherwise = fromIntegral (diff s1 s2 + diff s2 s1) / fromIntegral (length s1 + length s2)
  where
    diff [] _ = 0
    diff (x:xs) ys
        | x `elem` ys = diff xs ys
        | otherwise   = 1 + diff xs ys

-- distance2
distance2 :: String -> String -> Float
distance2 s1 s2
    | null s1 && null s2 = 0
    | otherwise = fromIntegral (nonDigits s1 + nonDigits s2) / fromIntegral (length s1 + length s2)
  where
    nonDigits [] = 0
    nonDigits (x:xs)
        | x `elem` ['0'..'9'] = nonDigits xs
        | otherwise           = 1 + nonDigits xs
