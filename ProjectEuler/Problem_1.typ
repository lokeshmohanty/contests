= Problem 1: Multiples of 3 or 5 

== Question
If we list all the natural numbers below $10$ that are multiples of $3$ or $5$, we get $3, 5, 6$ and $9$. The sum of these multiples is $23$.

Find the sum of all the multiples of $3$ or $5$ below $1000$.

== Solution

=== Code: Haskell

```haskell
ans = sum filter (\x -> or [mod x 3 == 0, mod y 5 == 0]) [1..999]
```


