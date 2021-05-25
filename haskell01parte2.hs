-- Prática 01 de Haskell - Parte 2
-- Nome: Pedro Farias
import Haskell01parte1

--aplica htmlitem em todos os itens
itemize :: [String] -> [String]
itemize str = map htmlItem str

--retorna uma string somente com as vogais--
--onlyVowels :: String -> String
--onlyVowels str =

--Retorna apenas os números pares
onlyEven :: [Int] -> [Int]
onlyEven num = map if num mod 2 == 0

--Calcula a area da circunferência de uma lista de valores--
calcAreas :: [Float] -> [Float]
calcAreas list = map circleArea list

