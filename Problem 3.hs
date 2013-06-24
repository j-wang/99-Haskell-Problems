{--| Problem 3 of Ninety-Nine Haskell Problems

James Wang, 24 Jun 2013

Find the K'th element of a list. The first element
of the list is number 1.
Example: elementAt [1,2,3] 2 -> 2
Example: elementAt "haskell" 5 -> 'e'

--}

elementAt :: [a] -> Integral -> a
elementAt (x:_) 1 = x
elementAt (x:xs) n = elementAt xs (n - 1)

