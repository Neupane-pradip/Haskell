distanceFilter :: (String -> String -> Float) -> Float -> String -> [String] -> [String]
distanceFilter f d s ss = filter (\str -> f s str <= d) ss
