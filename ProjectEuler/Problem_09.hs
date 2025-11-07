-- Problem 9: Special Pythagorean Triplet

-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which a^2 + b^2 = c^2
--
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find a * b * c.

main = putStrLn $ show $ ans 1000

ans n = product $ head $ filter ((==n) . sum) $ pythagoreanTriplets (div n 2)

-- a^2 + b^2 = c^2 => b - a < c < a + b
-- if a + b + c = n => a < b < c < n/2

-- Brute force
pythagoreanTriplets n = map (\(b:c:_) -> [intSqrt $ (c - b)*(c + b), b, c]) $ duplets n
  where duplets n = [[b, c] | b <- [1..n], c <- [1..n], b < c, (c - b) * (c + b) `elem` squaresTill b]
        intSqrt x = last $ takeWhile (\y -> y^2 <= x) [1..x]

squaresTill n = map (^2) [1..n]

