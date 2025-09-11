absoluto :: Integer -> Integer
absoluto x = abs x

cei :: Double -> Integer
cei y = ceiling y

suc :: Integer -> Integer
suc z = succ z

men :: Double -> Double -> Double
men a s = min a s

maxi :: Double -> Double -> Double
maxi q w = max q w 

dividir :: Integer -> Integer -> Integer
dividir x y = div x y

modulo :: Integer -> Integer -> Integer
modulo x y = mod x y

par :: Integer -> Bool
par x = even x

nummenor :: Double -> Integer
nummenor x = floor x

mcd :: Integer -> Integer -> Integer
mcd x y = gcd x y 

negacion :: Bool -> Bool
negacion x = not x

impar :: Integer -> Bool
impar x = odd x

sigma :: Integer -> Integer
sigma x = signum x

retorno :: Integer -> Integer -> Integer
retorno x y =  snd (x,y) 

menu ::IO()
menu = do
    putStrLn("=== MENU😁 👍")
    putStrLn("¿Que deseas hacer?")
    putStrLn("1) Valor absoluto de un numero")
    putStrLn("2) Valor siguiente del numero de decimal a entero")
    putStrLn("3) Valor siguiente del numero entero")
    putStrLn("4) Numero menor de 2")
    putStrLn("5) Numero mayor de 2 ")
    putStrLn("6) Divide dos numeros ")
    putStrLn("7) Modulo de un numero ")
    putStrLn("8) Verifica si es un numero par")
    putStrLn("8) Valor anterior del numero de decimal a entero")
    putStrLn("9) Maximo como un divisor de un numero")
    putStrLn("10) Negacion de una booleana")
    putStrLn("11) Numero impar")
    putStrLn("12) Numero que devuelve positivo o negativo")
    putStrLn("13) Devuelve el segundo numero")
    putStrLn("14) Salir")
    opcion <- getLine
    
    case opcion of 
        "1" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(absoluto x))
            menu
            
        "2" -> do
            putStrLn("Introduce un numero con notacion decimal: ")
            n2 <- getLine
            let y = read n2 :: Double
            putStrLn("El resultado es: "++show (cei y))
            menu
            
        "3" -> do
            putStrLn("Introduce un numero: ")
            n3 <- getLine
            let z = read n3 :: Integer
            putStrLn("El resultado es: "++show (suc z))
            menu
            
        "4" -> do
            putStrLn("Introduce el primer numero: ")
            n4 <- getLine
            let a = read n4 :: Double
            putStrLn("Introduce el segundo numero: ")
            n5 <- getLine
            let s = read n5 :: Double
            putStrLn("El menor es: "++show (men a s))
            menu  
            
        "5" -> do
            putStrLn("Introduce el primer numero: ")
            n6 <- getLine
            let q = read n6 :: Double
            putStrLn("Introduce el segundo numero: ")
            n7 <- getLine
            let w = read n7 :: Double
            putStrLn("El mayor es: "++show (maxi q w))
            menu  

        "6" -> do
            putStrLn("Introduce el primer numero: ")
            n8 <- getLine
            let x = read n8 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n9 <- getLine
            let y = read n9 :: Integer
            putStrLn("El resultado es: "++show (dividir x y))
            menu  
            
        "7" -> do
            putStrLn("Introduce un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++show (par x))
            menu  
            
        "8" -> do
            putStrLn("Introduce un numero: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es: "++show (nummenor x))
            menu 
            
        "9" -> do
            putStrLn("Introduce el primer numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n9 <- getLine
            let y = read n9 :: Integer
            putStrLn("El resultado es: "++show (mcd x y))
            menu 
            
        "10" -> do
            putStrLn("Introduce un estado (True o False): ")
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn("El resultado es: "++show (negacion x))
            menu 
        
        "11" -> do
            putStrLn("Introduce un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++show (impar x))
            menu 
            
        "12" -> do
            putStrLn("Introduce un numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++show (sigma x))
            menu 
            
        "13" -> do
            putStrLn("Introduce el primer numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n9 <- getLine
            let y = read n9 :: Integer
            putStrLn("El resultado es: "++show (retorno x y))
            menu 
            
        "14" -> do 
            putStrLn("Adios")
        _ -> do
            putStrLn("Opcion no valida")
            menu

main :: IO ()
main = menu