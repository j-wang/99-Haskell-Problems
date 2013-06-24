{--| Problem 2 of Ninety-Nine Haskell Problems

James Wang, 24 Jun 2013

Find the last but one element of a list.
Example: myButLast [1,2,3,4] -> 3

I chose not to use a Maybe monad here, which
means this breaks for 1 or 0 element lists.

--}

myButLast :: [a] -> a
myButLast (x:_:[]) = x
myButLast (_:xs) = myButLast xs

-- Should be more time efficient (no traversal needed)
myButLast' :: [a] -> a
myButLast' = head . tail . reverse
