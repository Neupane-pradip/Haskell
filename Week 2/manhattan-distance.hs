points :: Integer -> [(Integer, Integer)]
points x = [ (i, j) | i <- [-x..x], j <- [-x..x], abs i + abs j <= x ]