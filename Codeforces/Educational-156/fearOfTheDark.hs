-- B. Fear of the Dark (https://codeforces.com/contest/1886/problem/B)

{-|
Monocarp tries to get home from work. He is currently at the point O=(0,0)
of a two-dimensional plane; his house is at the point P=(Px,Py).

Unfortunately, it is late in the evening, so it is very dark.
Monocarp is afraid of the darkness. He would like to go home
along a path illuminated by something.

Thankfully, there are two lanterns, located in the points A=(Ax,Ay) and B=(Bx,By).
You can choose any non-negative number w and set the power of both lanterns to w.
If a lantern's power is set to w, it illuminates a circle of radius w
centered at the lantern location (including the borders of the circle).

You have to choose the minimum non-negative value w for the power of the
lanterns in such a way that there is a path from the point O to the point
P which is completely illuminated. You may assume that the lanterns don't
interfere with Monocarp's movement.
-}

-- Example Input
{-|
2
3 3
1 0
-1 6
3 3
-1 -1
4 3
-}

-- Example Output
{-|
3.6055512755
3.2015621187
-}

main :: IO ()
main = interact $ unlines . out . map solve . get . map (map read . words) . tail . lines

data P = P Double Double
get :: [[Double]] -> [(P, P, P)]
get [] = []
get ([x1, x2]:[y1, y2]:[z1, z2]:xs) = (P x1 x2, P y1 y2, P z1 z2) : get xs

out :: [Double] -> [String]
out = map show

-- Constraints:
-- Both, origin and target should be illuminated
-- i.e., w >= max (min OA OB) (min AP BP)
-- if A or B is nearer to both the origin and the target, say X, w = max OX XP
-- else w = min of max (OA, BP, AB / 2), max (OB, AP, AB / 2)
solve :: (P, P, P) -> Double
solve (pt, pa, pb) = minimum [ max (dist pa po) (dist pa pt)
                             , max (dist pb po) (dist pb pt)
                             , maximum [(dist pa po), (dist pb pt), (dist pa pb) / 2]
                             , maximum [(dist pb po), (dist pa pt), (dist pa pb) / 2]
                             ]
  where
    dist (P x1 y1) (P x2 y2) = sqrt $ sum $ map (^2) [(x1 - x2), (y1 - y2)]
    po = P 0 0
