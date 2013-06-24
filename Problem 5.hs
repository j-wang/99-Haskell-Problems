{--| Problem 5 of Ninety-Nine Haskell Problems

James Wang, 24 Jun 2013

Reverse a list.
Example: myReverse "A man, a plan, a canal, panama!" ->
"!amanap ,lanac a ,nalp a ,nam A"
Example: myReverse [1,2,3,4] ->
[4,3,2,1]

--}

myReverse :: [a] -> [a]
myReverse xs = 
  let rev :: [a] -> [a] -> [a]
      rev [] acc = acc
      rev (x:xs) acc = rev xs (x : acc)
  in rev xs []
