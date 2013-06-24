{--| Problem 4 of Ninety-Nine Haskell Problems

Find the number of elements of a list.
Example: myLength [123, 456, 789] -> 3
Example: myLength "Hello, world!" -> 13

--}

myLength :: [a] -> Integral
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
