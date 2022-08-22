-- https://wiki.haskell.org/99_questions/1_to_10
-- Get the penultimate item from a list

penultimate :: [a] -> Maybe a 
penultimate ls = o where 
  o = case reverse ls of (_:o:_) -> Just o
                         _       -> Nothing