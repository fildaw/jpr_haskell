# Solving algorithmic and combinatoric problems using Haskell
## Exercise 11 - description
For given natural numbers n and m, provide the n-th number in the lexicographic order of numbers from 01...m to m(m-1)...0 (where a number is any permutation of digits from 0 to m). For example, for n = 2 and m = 3, the result is 0132. For 9 < m < 16, hexagonal numbers should be used. For example, for n = 2 and m = 10, the result is 012345678A9.
## Exercise 21 - description
For a given natural number n ≤ 5, provide the sum of numbers that can be expressed as the sum of n-th powers of their digits. For n = 4, the result is 19316 = 1634 + 8208 + 9474 = 1^4 + 6^4 + 3^4 + 4^4 + 8^4 + 2^4 + 0^4 + 8^4 + 9^4 + 4^4 + 7^4 + 4^4.
## Exercise 29 - description
The Prüfer code allows you to transform any tree into a unique sequence of numbers. You're tasked with implementing a function that encodes a tree given in the form of an edge list (a list of pairs of numbers) into a Prüfer code (a list of numbers). Example:
```
prufer_code [(1, 2)]
> []
prufer_code [(1, 2), (1, 3)]
> [1]
prufer_code [(1, 2), (2, 3)]
> [2]
prufer_code [(1, 3), (2, 3)]
> [3]
prufer_code [(1, 4), (2, 4), (3, 4)]
> [4, 4]
```
