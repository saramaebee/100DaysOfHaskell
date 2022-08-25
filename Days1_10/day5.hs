-- https://wiki.haskell.org/99_questions/1_to_10#Problem_5
-- Reverse a list

-- ofc, using built-in functions
myRev :: [a] -> [a]
myRev = reverse

-- but also, let's write our own implementation
myRev' :: [a] -> [a]
myRev' = foldl (flip (:)) [] 