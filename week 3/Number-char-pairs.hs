-- Map positions 1..26 to chars 'a'..'z'
letters :: [(Integer, Char)]
letters = zip [1..26] ['a'..'z']

-- Return all chars whose index is divisible by n
charsDivisibleBy :: Integer -> [Char]
charsDivisibleBy n
  | n <= 0    = []
  | otherwise = [c | (i,c) <- letters, i `mod` n == 0]


-- Return all chars whose index is a product of any two different numbers from ns
charsProductOf :: [Integer] -> [Char]
charsProductOf ns = [c | (i,c) <- letters, i `elem` prods]
  where
    prods = [x*y | x <- ns, y <- ns, x < y, x*y <= 26]
