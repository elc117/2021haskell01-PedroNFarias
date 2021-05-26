-- Prática 01 de Haskell - Parte 2
-- Nome: Pedro Farias
import Haskell01parte1

--aplica htmlitem em todos os itens
itemize :: [String] -> [String]
itemize str = map htmlItem str

--retorna uma string somente com as vogais--
onlyVowels :: String -> String
onlyVowels str = filter isVowel2 str

--Filtra as idades maiores de 65
onlyElderly :: [Int] -> [Int]
onlyElderly list = filter isElderly list

--Retorna apenas palavras longas
onlyLongWords :: [String] -> [String]
onlyLongWords str = filter isLongWord str

--Retorna apenas os números pares
onlyEven :: [Int] -> [Int]
onlyEven list = filter even list

--Verifica se o número está entre 60 e 80--
isBetween60And80 :: Int -> Bool
isBetween60And80 num = if num > 60 && num < 80 then True else False
--Filtra os números entre 60 e 80
onlyBetween60And80 :: [Int] -> [Int]
onlyBetween60And80 list = filter isBetween60And80 list

--Verificar se o caracter é um espaço--
isSpace :: Char -> Bool
isSpace char = if char == ' ' then True else False
--Conta a quantidade de espaços numa string--
countSpaces :: String -> Int
countSpaces str = length (filter isSpace str)

--Calcula a area da circunferência de uma lista de valores--
calcAreas :: [Float] -> [Float]
calcAreas list = map circleArea list

--Encontra um caracter numa string--
charFound :: Char -> String -> Bool
charFound char str = if (length (filter (== char) str)) > 0 then True else False
