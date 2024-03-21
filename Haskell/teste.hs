mid3 x y z
  | x <= y && y <= z = y
  | z <= y && y <= x = y
  | y <= z && z <= x = z
  | x <= z && z <= y = z
  | z <= x && x <= y = x
  | y <= x && x <= z = x

coll x 
 | odd x = 3*x +1
 | even x = x `div` 2


integrate f a b = inner f a  ((b-a)/10000000)
 where inner f x s 
         | x+s<b = f x*s +inner f (x+s) s
         | otherwise = f x*(b-x)


derivative f x =
    let h = 10**(-8)
    in (f(x +(h/2))-f(x-(h/2)))/h
          

mittlere []=[]
mittlere [_,_]=[]
mittlere(x1:x2:x3:t)
    | x1<x2 && x3>x2 = x2:mittlere(x2:x3:t)
    | otherwise = mittlere(x2:x3:t)


