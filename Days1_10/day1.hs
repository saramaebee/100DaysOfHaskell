-- https://wiki.haskell.org/99_questions/1_to_10
-- Get the last element of a list

-- My original solution
lastElem :: [a] -> a
lastElem = head . reverse

-- The recommendation from HLS
lastElem' :: [a] -> a
lastElem' = last

