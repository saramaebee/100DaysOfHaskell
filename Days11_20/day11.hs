-- run length encoding but if the letter already exists in the list, just modify that

mrle :: Eq a => [(a, Int)] -> [a] -> [(a, Int)]
mrle existing [] = existing
mrle existing (l:ls) = let new = mrle' l <$> existing in
  if existing == new
    then mrle (new ++ [(l, 1)]) ls
    else mrle new ls
  

mrle' :: Eq a => a -> (a, Int) -> (a, Int)
mrle' el (el', l) | el == el' = (el, l + 1)
mrle' _  (el, l) = (el, l)