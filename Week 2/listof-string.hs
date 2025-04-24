headOrLast :: [String] -> Char -> [String]
headOrLast str c = [s | s <- str, not (null s), head s == c || last s == c]