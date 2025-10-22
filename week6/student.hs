addpos :: [Integer] -> Integer
addpos = foldr f 0
  where
    f x acc
      | x == 0    = 0  -- stop folding if zero is found
      | x > 0     = x + acc
      | otherwise = acc
