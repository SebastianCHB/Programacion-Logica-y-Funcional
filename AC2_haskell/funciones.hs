    sumar :: Integer -> Integer -> Integer
    sumar x y= x+y

    factorial :: Integer -> Integer
    factorial 0 = 1
    factorial n = n * factorial(n-1) 

    menu ::IO()
    menu = do
        putStrLn("=== MENU😁 👍")
        putStrLn("¿Que deseas hacer?")
        putStrLn("1) Factorial")
        putStrLn("2) Suma")
        putStrLn("3) Salir")
        opcion <- getLine
        
        case opcion of 
            "1" -> do
                putStrLn("Introduce el número: ")
                n1 <- getLine
                let x = read n1 :: Integer
                putStrLn("El resultado es: "++ show(factorial x))
                menu

            "2" -> do
                putStrLn("Introduce el primer número: ")
                n1_str <- getLine
                let x = read n1_str :: Integer
                putStrLn("Introduce el segundo número: ")
                n2_str <- getLine
                let y = read n2_str :: Integer
                putStrLn("El resultado es: " ++ show (sumar x y))
                menu
                
            "3" -> do 
                putStrLn("Adios")
            _ -> do
                putStrLn("Opcion no valida")
                menu

    main :: IO ()
    main = menu