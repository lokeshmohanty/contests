= Problem Zero

== Question
A number is a perfect square, or a square number, if it is the square of a positive integer.
For example, $25$ is a square number because $5^2 = 5 times 5 = 25$; it is also an odd square.
The first 5 square numbers are: $1, 4, 9, 16, 25$, and the sum of the odd squares is $1 + 9 + 25 = 35$.
Among the first *$445$ thousand* square numbers, what is the sum of all the odd squares?


== Solution
Sum of odd squares = $(2n + 1)^2 + (2n + 3)^2 + (2n + 5)^2 + ... $

Sum of first $n$ odd square numbers = $sum_(i=1)^(n)(2n - 1)^2$

$ 
(2n - 1)^2 &= 4n^2 - 4n + 1 \
sum_(i=1)^n (2n - 1)^2 &= sum_(i=1)^n (4n^2 - 4n + 1) \
&= 4sum_(i=1)^n n^2 - 4sum_(i=1)^n n + sum_(i=1)^n 1 \
&= (4n(n+1)(2n+1))/6 - 2n(n+1) + n \
&= (4n^3 + 6n^2 + 2n - 6n^2 - 6n + 3n)/3 \
&= (4n^3 - n)/3 = n(4n^2 - 1)/3 = ((2n - 1)n(2n + 1))/3 \
$

In the first $n$ square numbers, there are $ceil(n/2)$ odd square numbers

=== Code: Python

```python
import math

def odd_squares_sum(n):
    n = math.ceil(n/2)
    return n * (2*n - 1) * (2*n + 1) / 3
```

