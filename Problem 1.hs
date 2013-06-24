{--| Problem 1 of Ninety-Nine Haskell Problems

James Wang, 24 Jun 2013

Find the last element of a list.
Example: myLast [1,2,3,4] -> 4

I chose not to do an exhaustive match ([] case
is missing), because I don't want to use Maybe
in this particular problem.

--}

myLast :: [a] -> a
myLast (x:[]) = x
myLast (_:xs) = myLast xs

myLast' :: [a] -> a
myLast' = head . reverse
