{--| Problem 6 of Ninety-Nine Haskell Problems

James Wang, 24 Jun 2013

Find out whether a list is a palindrome. A palindrome
can be read forward or backward; e.g. (x a m a x).
Example: isPalindrome [1,2,3] -> False
Example: isPalindrome "madamimadam" -> True

--}

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs
