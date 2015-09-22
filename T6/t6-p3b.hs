import Text.Printf

type Point     = (Float,Float)
type Circle    = (Point,Float)

-- Gera codigo-fonte de arquivo SVG 
-- concatenando uma lista de circulos e seus atributos de estilo
writeCircles :: Float -> Float -> [(String,Circle)] -> String
writeCircles w h rs = 
  printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 
      ++ (concatMap writeCircle rs) ++ "</svg>"

-- Gera circulo SVG 
-- a partir de coordenadas+raio e de uma string com atributos de estilo
writeCircle :: (String,Circle) -> String 
writeCircle (style,((x,y),r)) = 
  printf "<circle cx='%.3f' cy='%.3f' r='%.2f' style='%s' />\n" x y r style

-- Gera a posição/localização do centro de cada circulo
-- Baseado no raio, quantidade de circulos e linhas
elemPositions :: Float -> Float -> Float -> [(Float, Float)]
elemPositions r qnt lines = [(x*r, y*r) | x <- [1..qnt], y <- [1..lines]]

-- Gera o estilo de cada circulo, variando a cor cada um.
-- Baseado no esquema de cores HSL. Saturação, brilho e opacidade são sempre iguais.
elemStyle :: Float -> Float -> Float -> [String]
elemStyle r qnt lines = ["fill:hsl(" ++ show ((360/(qnt*lines))*c*l) ++ ", 100%, 50%); fill-opacity: 0.5" 
  | c <- [0..(qnt-1)], l <- [1..lines] ]

-- Função principal do código para gerar a circulos coloridos sobrepostos em SVG
-- Alteração das variáveis afeta quantidade, linhas e o raio de cada circulo
main :: IO ()
main = do
  let
    radius = 100;     -- Raio de cada circulo
    qntCircle = 18;   -- Qtde de circulos por linha
    qntLines = 7;     -- Qtde de linhas

    style = elemStyle radius qntCircle qntLines
    circles = zip style [(xy, radius) | xy <- elemPositions radius qntCircle qntLines ]
    -- Exemplo de elemento contido em circles = [("fill:hsl...",((100.0,100.0),100.0))]
  writeFile "colors-p3b.svg" $ writeCircles ((radius*qntCircle)+100) ((radius*qntLines)+100) circles
