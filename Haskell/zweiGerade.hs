firstEvenProduct []=(1:: Integer)
firstEvenProduct (x:xs)
 | even x= x * second (xs)
 | otherwise = firstEvenProduct(xs)
  where second [] = 1
        second (x:xs)
         | even x=x
         | otherwise = second(xs)
