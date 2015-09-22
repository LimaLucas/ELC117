import Text.Printf

type Point     = (Float,Float)
type Circle    = (Point,Float)

-- Gera codigo-fonte de arquivo SVG 
-- concatenando uma lista de retangulos e seus atributos de estilo
writeRects :: Float -> Float -> [(String,Circle)] -> String
writeRects w h rs = 
  printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 
      ++ (concatMap writeRect rs) ++ "</svg>"

-- Gera retangulo SVG 
-- a partir de coordenadas+dimensoes e de uma string com atributos de estilo
writeRect :: (String,Circle) -> String 
writeRect (style,((x,y),r)) = 
  printf "<circle cx='%.3f' cy='%.3f' r='%.2f' style='%s' />\n" x y r style

-- Gera a posição/localização do canto esquerdo superior de cada célula na tela
-- Baseado na numeração de cada célula e de sua altura e largura
elemPositions :: Float -> Float -> Float -> [(Float, Float)]
elemPositions r qnt lines = [(x*r, y*r) | x <- [1..qnt], y <- [1..lines]]

-- Gera o estilo de cada célula, variando a cor de cada circulo.
-- Baseado no esquema de cores HSL. Saturação, brilho e opacidade são sempre iguais.
elemStyle :: Float -> Float -> Float -> [String]
elemStyle r qnt lines = ["fill:hsl(" ++ show ((360/qnt)*c) ++ ", 100%, 50%); fill-opacity: 0.5" 
  | c <- [0..(qnt-1)], aux <- [1..lines] ]

-- Função principal do código para gerar a paleta de cores SVG
-- Alteração das variáveis afeta tamanho, quantidade de células e cor base da paleta
main :: IO ()
main = do
  let
    radius = 100;
    qntCircle = 10;
    qntLines = 3;

    style = elemStyle radius qntCircle qntLines
    rects = zip style [(xy, radius) | xy <- elemPositions radius qntCircle qntLines ]
    -- Exemplo de elemento contido em rects = [("fill:hsl...",((1.0,1.0),40.0,20.0))]
  writeFile "colors-p3a.svg" $ writeRects ((radius*qntCircle)+100) ((radius*qntLines)+100) rects
