onlyDigits :: String -> Bool
onlyDigits ""     = False
onlyDigits [c]    = c >= '0' && c <= '9'
onlyDigits (c:cs) = (c >= '0' && c <= '9') && onlyDigits cs