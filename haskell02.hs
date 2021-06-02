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

quarentena :: [(String,Float)] -> [(String,Float)]
quarentena lst = filter (\x -> snd x > 37.8) lst

idadesEm :: [Int] -> Int -> [Int]
idadesEm lst ano = map (\x -> ano - x) lst

changeNames :: [String] -> [String]
changeNames lst =[if head x == 'A' then "Super" ++ x else x | x <- lst]

onlyShorts :: [String] -> [String]
onlyShorts lst = filter (\str->length(str)<5) lst