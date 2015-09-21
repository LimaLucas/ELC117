import Text.Printf

type Point     = (Float,Float)
type Rect      = (Point,Float,Float)

-- Gera codigo-fonte de arquivo SVG 
-- concatenando uma lista de retangulos e seus atributos de estilo
writeRects :: Float -> Float -> [(String,Rect)] -> String
writeRects w h rs = 
  printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 
      ++ (concatMap writeRect rs) ++ "</svg>"

-- Gera retangulo SVG 
-- a partir de coordenadas+dimensoes e de uma string com atributos de estilo
writeRect :: (String,Rect) -> String 
writeRect (style,((x,y),w,h)) = 
  printf "<rect x='%.3f' y='%.3f' width='%.2f' height='%.2f' style='%s' />\n" x y w h style

-- Gera a numeração/localização de cada célula na matriz
-- Começando em zero. Ex.: 0-1, 0-2, 0-3, 1-1, 1-2, 1-3...
cellNumeration :: Float -> Float -> [(Float, Float)]
cellNumeration l c = [(x, y) | x <- [0..(l-1)], y <- [0..(c-1)]]

-- Gera a posição/localização do canto esquerdo superior de cada célula na tela
-- Baseado na numeração de cada célula e de sua altura e largura
cellPositions :: Float -> Float -> [(Float, Float)] -> [(Float, Float)]
cellPositions w h cellNum = [(snd x *w, fst x *h) | x <- cellNum]

-- Gera o estilo de cada célula, variando brilho e saturação da cor.
-- Baseado no esquema de cores HSL
cellStyle :: Float -> Float -> Float -> [(Float, Float)] -> [String]
cellStyle color l c cellNum = ["fill:hsl(" ++ show color ++ ", " -- Cor padrão
  ++ show (snd x *(100/c)) ++ "%, " ++ show (fst x *(100/l)) -- Saturação e Brilho
  ++ "%);stroke:gray" | x <- reverse cellNum] -- Contorno

-- Função principal do código para gerar a paleta de cores SVG
-- Alteração das variáveis afeta tamanho, quantidade de células e cor base da paleta
main :: IO ()
main = do
  let
    lines = 9     -- Qtde total de linhas
    columns = 5   -- Qtde total de colunas
    width = 40    -- Largura de cada célula
    height = 20   -- Altura de cada célula
    color = 210   -- Cor base

    cellNum = cellNumeration lines columns
    style = cellStyle color (lines-1) (columns-1) cellNum
    rects = zip style [ (xy, width, height) | xy <- cellPositions width height cellNum ]
    -- Exemplo de elemento contido em rects = [("fill:hsl...",((1.0,1.0),40.0,20.0))]
  writeFile "colors-p1.svg" $ writeRects (columns*width) (lines*height) rects
