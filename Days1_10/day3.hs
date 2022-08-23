-- https://wiki.haskell.org/99_questions/1_to_10#Problem_3
-- Find the k'th element of a list
elementAt k ls = head $ drop (k - 1) ls