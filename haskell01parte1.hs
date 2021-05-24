--Soma dos quadrados de um número--
sumSquares :: Int -> Int -> Int
sumSquares x y = x*y + x*y

--Recebe um raio e calcula a área do circula--
circleArea :: Float -> Float
circleArea x = pi * x^2

--Recebe a data de nascimento e o ano atual e retorna a idade--
age :: Int -> Int -> Int
age nascimento ano = ano - nascimento

--Recebe idade e retorna true se maior de 65 anos
isElderly :: Int -> Bool
isElderly idade = if idade > 65 then True else False

--Transformar a palavra em html--
htmlItem :: String -> String
htmlItem str = "<li>"++str++"</li>"

--Verifica se começa com o caracter "A"--
startsWithA :: String -> Bool
startsWithA str = if head str == 'A' then True else False

--Verifica se a palavra é um verbo--
isVerb :: String -> Bool
isVerb str = if last str == 'r' then True else False

--Recebe um caracter e verifica se é uma vogal e minúscula--
isVowel :: Char -> Bool
isVowel char = if char == 'a'||char == 'e'||char == 'i'||char == 'o'||char == 'u' then True else False

--Verifica se o primeiro elemento de duas listas é igual--
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads list1 list2 = if head list1 == head list2 then True else False

--Recebe um caracter e verifica se é uma vogal--
isVowel2 :: Char -> Bool
isVowel2 char = elem char ['a','e','i','o','u','A','E','I','O','U']