import Text.Printf

-- Gera codigo-fonte de arquivo SVG 
-- concatenando uma lista de retangulos e seus atributos de estilo
writeCircles :: Float -> Float -> (Float,Float) -> [(String,Float)] -> String
writeCircles w h center cs = 
  printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 
      ++ (concatMap (writeCircle center cs)) ++ "</svg>"

-- Gera circulo SVG 
-- a partir de coordenadas+raio e de uma string com atributos de estilo
writeCircle :: (Float,Float) -> (String,Float) -> String 
writeCircle (x,y) (style,r) = 
  printf "<circle cx='%.2f' cy='%.2f' r='%.2f' style='%s' />\n" x y r style

-- Gera a o raio de cada circulo
-- Baseado no raio máximo e quantidade de circulos
elemRadius :: Float -> Float -> [Float]
elemRadius r qnt = [(r/qnt)*x | x <- [1..qnt]]

-- Gera o estilo de cada circulo, variando a cor cada um.
-- Baseado no esquema de cores HSL. Saturação, brilho e opacidade são sempre iguais.
elemStyle :: Float -> Float -> [String]
elemStyle r qnt = ["fill:hsl(" ++ show ((360/qnt)*c) ++ ", 100%, 50%); fill-opacity: 0.5" 
  | c <- [0..(qnt-1)] ]

-- Função principal do código para gerar a circulos coloridos sobrepostos em SVG
-- Alteração das variáveis afeta quantidade e o raio de cada circulo
main :: IO ()
main = do
  let
    maxRad = 1000;    -- Raio máximo, do ultimo circulo exterior
    qntCircle = 10;   -- Número de circulos sobrepostos

    style = elemStyle maxRad qntCircle
    circles = zip style elemRadius maxRad qntCircle
    -- Exemplo de elemento contido em circles = [("fill:hsl...",100.0)]
  writeFile "colors-p3a.svg" $ writeCircles (maxRad*2) (maxRad*2) (maxRad,maxRad) circles
