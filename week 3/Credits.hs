credits :: (Char, Integer) -> (Char, Integer) -> Integer
credits c1@(s1,v1) c2@(s2,v2)
  | isAceSpades c1 || isAceSpades c2        = 14
  | isConsecutive v1 v2 && s1 == s2         = 8
  | v1 == v2                                = 6
  | isConsecutive v1 v2                     = 4
  | s1 == s2                                = 2
  | otherwise                               = 0
  where
    isAceSpades (s,v) = s == 's' && v == 14
    isConsecutive x y = abs (x - y) == 1