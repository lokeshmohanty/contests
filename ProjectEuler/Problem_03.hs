-- Problem 3: Largest Prime Factor

-- The prime factors of 13195 are 5,7,13 and 29.
-- What is the largest prime factor of the number 600851475143?

main = putStrLn $ show $ ans 600851475143

ans = last . primeFactors

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = firstFactor : primeFactors (factorizeBy firstFactor n)
  where firstFactor = primeFactor n primes

primes = fP [2..]
  where fP (x:xs) = x:(fP $ filter (\y -> y `mod` x /= 0) xs)

primeFactor m []     = m
primeFactor m (x:xs) = if m `mod` x == 0 then x else primeFactor m xs

factorizeBy x m  = if m `mod` x == 0 then factorizeBy x (div m x) else m


