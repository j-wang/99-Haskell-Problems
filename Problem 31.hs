{--| Problem 31 of Ninety-Nine Haskell Problems

James Wang, 24 Jun 2013

Determine whether a given integer number is prime.
Example: isPrime 7 -> True

--}

isPrime :: Integral -> Bool
isPrime i = checkPrime i 2
  where checkPrime n start
          | (mod n start) == 0 = False
          | start == quot n 2  = True
          | otherwise          = checkPrime n (start + 1)
