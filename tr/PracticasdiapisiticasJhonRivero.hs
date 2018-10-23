import Data.Char
--ejercicios uno
--Defina  de  dos  maneras  diferentes  la  función  nand,  que  devuelve  True  excepto  cuando  sus  dos  argumentos  son  True
naand::Bool->Bool->Bool
naand True True   = False
naand r t =  r/=t || r==t
--metodo 2
naand2::Bool->Bool->Bool
naand2 x y 
        | x==True &&y==True = False
        | otherwise = True
-- Defina  la  función  and3  que  devuelve  True  cuando  todos  sus  argumentos  son  True.  El  tipo  de  la  función  e s       
and3  ::  Bool  ->  Bool  ->  Bool  ->  Bool
and3 x y z = x==y&&y==z 

--Ejercicios 
--Qué  efecto  tiene  la  siguiente  funciónmisterio  ::  Int  ->  Int  ->  Int  ->  Boolmisterio  x  y  z  =  not  (x==y)  &&  (y==z)› 
misterio  ::  Int  ->  Int  ->  Int  ->  Bool
misterio  x  y  z  =  not  (x==y)  &&  (y==z)
--Respuesta devuel True cuando el primero es diferente y los otros 2 son iguales  en caso contrario False

--Defina  la  función  tresDiferentes  que  devuelve  verdad  si  los  tres  valores  son  diferentes
tresDiferentes:: Int->Int->Int->Bool
tresDiferentes x y z = not (x==y )&&not(y==z)

--Defina  una  función  llamada  cuatroIguales  de  la  forma  en  que  se  definió  tresIguales
and4 ::  Int  ->  Int  ->  Int  ->Int -> Bool
and4 x y z a= x==y&&y==z&&z==a
-- Use  la  función  tresIguales  para  definir  la  función  cuatroIguales
tresIguales  ::  Int  ->  Int  ->  Int  ->  Bool
tresIguales  x  y  z  =    (x==y)  &&  (y==z)

cuatroIguales::   Int  ->  Int  ->  Int  ->Int->  Bool
cuatroIguales x y z a = (tresIguales x y z)&&z==a 
-- Indique  la  evaluación  línea  a  línea  de  las  siguientes  expresiones
--1.- tresIguales  (3+5)  4  (11  `div`  3)
-- (3+5)==4 && 4==(11  `div`  3)
-- 8==4 && 4== 11/3
-- False&& 4== 11/3
--False && False
--     False
--2.-misterio  (4+2)  4  (23  `mod`  5)
--not((4+2==4))&& 4== (23  `mod`  5)
-- not(6==4) && 4== (23  `mod`  5)
--True &&  4== (23  `mod`  5)
--True && 4 == 3
--True && false
--false
--3.- cuatroIguales  (4-2)  6  (13  `div`  8)  (34  `mod`    8)
--tresIguales (4-2) 6 (13  `div`  8) && (13  `div`  8)==(34  `mod`    8)
-- (4-2)== 6&& 6== (13  `div`  8)&& (13  `div`  8)==(34  `mod`    8)
-- 2==6 && 6== (13  `div`  8)&& (13  `div`  8)==(34  `mod`    8)
--false && 6== (13  `div`  8)&& (13  `div`  8)==(34  `mod`    8)
--false&& 6== 1 && (13  `div`  8)==(34  `mod`    8)
--false&& false  && (13  `div`  8)==(34  `mod`    8)
--false &&  (13  `div`  8)==(34  `mod`    8)
--false &&  1 == (34  `mod`    8)
--false && 1 == 2
--false && false
-- false

--4.- tresDiferentes  (3+1)  4  (16  `div  4)`
-- not ((3+1)==4)&&not (4== (16  `div  4)`)
--not(4==4)&&not (4== (16  `div  4)`)
--not(True)&&not (4== (16  `div  4)`)
--false &&not (4== (16  `div  4)`)
--fasle && not(4==(4))
--false && not ( true)
--false && false
--fasle

--Defina  la  función promedioTres  ::  Int  ->  Int  ->  Int  ->    Float
promedioTres  ::  Int  ->  Int  ->  Int  ->    Float
promedioTres a b c =   fromIntegral (a+b+c)/3

--Sea  la  ecuación  ax2  +  bx  +  c  =  0.0  defina  las  funciones PrimeraRaiz SegundaRaiz
primeraRaiz ::Double -> Double -> Double  ->Double
primeraRaiz a b c = ((-b+sqrt(b*b-4*a*c)))/ (2*a)

segundaRaiz ::Double -> Double -> Double  ->Double
segundaRaiz a b c = ((-b-sqrt(b*b-4*a*c)))/ (2*a)

--Defina  una  función  que  devuelva  el  número  de  raíces  de  una  ecuación  cuadrática.  La  función  tiene  el  tipo.  numerodeRaicesND  ::  Float  ->  Float  ->  Float  ->  Int

numerodeRaicesND  ::  Float  ->  Float  ->  Float  ->  Int
numerodeRaicesND a b c 
                     | (a/=0)&&b*b>4*a*c = 2
                     | (a/=0)&&b*b==4*a*c = 1
                     | (a/=0)&&b*b<4*a*c = 3
                     | otherwise = error " no aceptado"

-- Defina  una  función  que  devuelva  el  número  de  raíces  de  una  ecuación  cuadrática..  Se  asume  que  a==0. 
numeroDeRaices  ::  Float  ->  Float  ->  Float  ->  Int
numeroDeRaices 0 b c
                   |b/=0 = 1
                   |b==0 && c /=0   = 0
                   |b==0 && c ==0 = 3 
                   |otherwise =   error "no aceptado"  
numeroDeRaices a b c = error " no aceptado"                


--Defina  una  función  para  convertir  minúsculas  y  mayúsculas  y  que  retorne  sin  modificación  el  resto  de  los  caracteres
ttoUpper :: Char->Char
ttoUpper ch 
          | ch>='a' && ch <='z' = toUpper ch
          | ch>='A' && ch <='Z' = toLower ch
          | otherwise = error "no es aceptado"

--Defina  la  función:charToNum  ::  Char  ->  Int
charToNum  ::  Char  ->  Int
charToNum  a | a>'0'  && a<='9' = ord a - ord '0'  
             |otherwise = 0



--Listas  –  Ejercicios
-- Defina  la  función  producto  que  devuelve  el  producto  de  los  elementos  de  una  lista  (product)
fproduc:: [Int]->Int
fproduc [] = 1
fproduc (x:xs) =  (x * fproduc xs)

--Defina  una  función  que  indique  si  un  elemento  no  pertenece  a  una  lista  (notElem)
elemtt:: Eq a=>a->[a]->Bool
elemtt d []= False
elemtt d (x:xs) = x==d || elemtt d xs

-- Defina  las  funciolnes  and  y  or  que  toman  una  lista  de  valores  Booleanos  y  devuelve  un  valor  booleano,  la  aplicación  de  los  operadores  funciones  &&  y  ||  a  todos  los  elementos  de  la  lista
andd:: [Bool]-> Bool
andd []= True;
andd (x:xs) = x && andd xs

orr:: [Bool]-> Bool
orr []= False;
orr (x:xs) = x ||  andd xs

   