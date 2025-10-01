import System.Random (randomRIO)

puntoAleatorio :: IO (Double, Double)
puntoAleatorio = do
    x <- randomRIO(-1.0, 1.0)
    y <- randomRIO(-1.0, 1.0)
    return(x,y)

estaEnCirculo :: (Double, Double) -> Bool
estaEnCirculo (x,y) = x*x + y*y <= 1.0

calcPi :: Int -> IO Double
calcPi n = do
    puntos <- mapM(\_ -> puntoAleatorio) [1..n]
    let enCirculo = length (filter estaEnCirculo puntos)
    return (4.0 * fromIntegral enCirculo / fromIntegral n)

main :: IO ()
main = do 
    putStrLn "Ingrese el numero de dardos: "
    n <- readLn 
    piAprox <- calcPi n 
    putStrLn ("Pi vale: "++ show piAprox)