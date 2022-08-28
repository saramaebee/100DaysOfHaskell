-- https://wiki.haskell.org/99_questions/1_to_10#Problem_8
-- Eliminate duplicate consecutive elements from a list

import Data.List (group)

dedupe :: Eq a => [a] -> [a]
dedupe ls = head <$> group ls

