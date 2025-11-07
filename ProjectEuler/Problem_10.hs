-- Problem 10: Summation of Primes

-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--
-- Find the sum of all the primes below two million.

main = putStrLn $ show $ ans 2_000_000

ans n = sum $ takeWhile (<n) primes

primes = let fP (x:xs) = x:(fP $ filter (\y -> mod y x /= 0) xs) in fP [2..]
