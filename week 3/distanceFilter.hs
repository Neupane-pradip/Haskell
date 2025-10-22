averageResult :: [Integer -> Integer] -> ([Integer] -> Integer)
averageResult fs
  | null fs   = error "At least one function required"
  | otherwise = \xs ->
      if length fs /= length xs
        then error "Lists have different lengths"
        else
          let results = zipWith ($) fs xs
              total   = sum results
              len     = fromIntegral (length results)
          in total `div` len
