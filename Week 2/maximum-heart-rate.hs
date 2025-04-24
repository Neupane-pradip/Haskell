--Function to calculate maximum heart rate
-- based on the formula 220 - age
-- where age is the age of the person in years.
maxhr :: Float -> Float
maxhr age
  | age <= 40 = 220 - age
  | otherwise = 207 - (0.7 * age)