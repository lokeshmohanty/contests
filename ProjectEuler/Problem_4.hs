-- Problem 4: Largest Palindrome Product

-- A palindromic number reads the same both ways. The largest palindrome 
-- made from the product of two 2-digit numbers is 9009 = 91 x 99
--
-- Find the largest palindrome made from the product of two 3-digit numbers.

-- Brute force
main = putStrLn $ show $ ans [i * j | i <- [999, 998..100], j <- [999, 998..100]]

ans = maximum . take 5 . filter (isPalindrome . show)

isPalindrome [] = True
isPalindrome (x:[]) = True
isPalindrome (x:xs) = and [x == last xs, isPalindrome $ init xs]
