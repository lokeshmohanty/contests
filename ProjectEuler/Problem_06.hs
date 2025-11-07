-- Problem 6: Sum Square Difference

-- The sum of squares of first ten natural numbers is 385. 
-- The square of sum of first ten natural numbers is 3925.
-- The difference between then im 3025 - 385 = 2640.
--
-- Find the difference between the sum of squares and square
-- of first hundred natural numbers.

main = putStrLn $ show $ ans 100

ans n = (sumTill n)^2 - squareSumTill n

sumTill n = sum [1..n]
squareSumTill n = sum $ map (^2) [1..n]
