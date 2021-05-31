-- Prática 02 de Haskell
-- Nome: Gabriel Vinícius Heisler

isFebre :: Float -> Bool
isFebre x = x > 37.8

comFebre :: [Float] -> [Float]
comFebre list = filter isFebre list

comFebre' :: [Float] -> [Float]
comFebre' list = filter (\x -> x>37.8) list

itemize :: [String] -> [String]
itemize str = map (\str -> "<li>" ++ str ++ "</li>") str

areaMaior :: Float -> Float -> Bool
areaMaior num r = (r^2 * pi) > num

bigCircles :: Float -> [Float] -> [Float]
bigCircles num lista = filter (areaMaior num) lista

