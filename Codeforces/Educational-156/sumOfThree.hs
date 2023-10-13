-- A. Sum of Three (https://codeforces.com/contest/1886/problem/A)

{-|
  Monocarp has an integer n.
  He wants to represent his number as a sum of three distinct positive integers x, y, and z. Additionally, Monocarp wants none of the numbers x, y, and z to be divisible by 3.
  Your task is to help Monocarp to find any valid triplet of distinct positive integers x, y, and z, or report that such a triplet does not exist.
-}


-- Format Input
{-|
  The first line contains a single integer t (1≤t≤104) — the number of testcases.
  The only line of each testcase contains a single integer n (1≤n≤109).
-}

-- Format Output
{-|
  For each testcase, if there is no valid triplet x, y, and z, print NO on the first line.
  Otherwise, print YES on the first line. On the second line, print any valid triplet of
  distinct positive integers x, y, and z such that x+y+z=n, and none of the printed numbers
  are divisible by 3. If there are multiple valid triplets, you can print any of them.
-}

-- Example Input
{-|
4
10
4
15
9
-}
-- Example Output
{-|
YES
4 5 1
NO
YES
2 8 5
NO
-}

main :: IO ()
main = interact $ unlines . map (solve . read) . tail . lines

-- Case 1: n = 1 + 2 + (n-3) -> n >= 1 + 2 + 3 = 6  && n % 3 /= 0
-- Case 2: n = 1 + 4 + (n-5) -> n >= 1 + 4 + 5 = 10              
solve :: Int -> String
solve n
  | n >= 6 && n `mod` 3 /= 0 = "YES\n" ++ (unwords $ map show [1, 2, n-3])
  | n >= 10                  = "YES\n" ++ (unwords $ map show [1, 4, n-5])
  | otherwise                = "NO"
