-- Problem 7: 10,001st Prime

-- By listing the first six prime numbers: 2,3,5,7,11 and 13, we can see that 6th prime is 13
--
-- What is the 10,001st prime number?

main = putStrLn $ show $ ans 10_001

ans n = primes !! (n - 1)

primes = let fP (x:xs) = x:(fP $ filter (\y -> mod y x /= 0) xs) in fP [2..]
