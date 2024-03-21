p x1 x2 x3 = (not x2 || x1) && (x1 || x2) && (not x1|| x3) && (x2 || x3)


solve3 f =[ [x1,x2,x3] | x1 <- [True,False],x2 <- [True,False],x3 <- [True,False] , f x1 x2 x3 ]

rle list = length
 where length = count (head list) 1 (drop 1 list)



count x n list 
  | null list = [(x,n)]
  | x== head list = count x (n+1) (drop 1 list)
  | x/= head list = (x,n):count (head list) 1 (drop 1 list)

mymap f list =foldr (\x xs -> [f x] ++ xs) [] 

myfilter f list = foldr go [] list where
    go curr prev
        | f curr = (curr : prev) 
        | otherwise = prev 


