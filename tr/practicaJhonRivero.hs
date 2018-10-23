--Listas  –  Ejercicios
-- Defina  la  función  producto  que  devuelve  el  producto  de  los  elementos  de  una  lista  (product)
fproduc:: [Int]->Int
fproduc [] = 1
fproduc (x:xs) =  (x * fproduc xs)