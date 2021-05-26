import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 250 250 1000 "rgb(256, 256, 256, 1)") ++
  (svgCircle 60 60 50 "rgb(100, 100, 32, 0.4)") ++ 
  (svgCircle 90 90 50 "rgb(100, 200, 30, 0.4)") ++ 
  (svgCircle 250 250 125 "rgb(256, 256, 256, 1)") ++ 
  (svgCircle 250 250 100 "rgb(256, 0, 0, 1)") ++ 
  (svgCircle 250 250 75 "rgb(0, 256, 0, 1)") ++ 
  (svgCircle 250 250 50 "rgb(0, 0, 256, 1)") ++ 
  (svgCircle 400 100 100 "rgb(256, 14, 30, 0.9)") ++ 
  (svgCircle 400 200 100 "rgb(256, 156, 30, 0.8)") ++ 
  (svgCircle 400 300 100 "rgb(256, 50, 30, 0.7)") ++
  (svgCircle 400 400 100 "rgb(256, 50, 30, 0.6)") ++
  (svgCircle 400 500 100 "rgb(256, 50, 30, 0.5)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles1.svg" svgAll
