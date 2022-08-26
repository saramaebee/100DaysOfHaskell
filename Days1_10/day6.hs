-- https://wiki.haskell.org/99_questions/1_to_10#Problem_6
-- Find out whether a list is a palindrome
isPalindrome :: Eq a => [a] -> Bool
isPalindrome ls = ls == reverse ls