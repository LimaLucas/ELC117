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
cellPositions :: Float -> Float -> Float -> Float -> Float -> Float -> [(Float, Float)] -> [(Float, Float)]
cellPositions lp cp lc cc w h cellNum = 
  [((w*snd cell)+(10* snd palette)+(cc*w* snd palette),
    (h*fst cell)+(10* fst palette)+(lc*h* fst palette))
  | cell <- cellNum, palette <- cellNumeration lp cp ]

-- Gera o estilo de cada célula, variando brilho e saturação da cor.
-- Baseado no esquema de cores HSL
cellStyle :: Float -> Float -> Float -> [(Float, Float)] -> [String]
cellStyle qntPalette l c cellNum = ["fill:hsl(" ++ show ((360/qntPalette)*(palette)) ++ ", " -- Cor
  ++ show (snd cell *(100/c)) ++ "%, " ++ show (fst cell *(100/l)) -- Saturação e Brilho
  ++ "%);stroke:gray" | cell <- reverse cellNum, palette <- [0.0..(qntPalette-1)]] -- Contorno

-- Função principal do código para gerar a matriz de paletas de cores SVG
-- Alteração das variáveis afeta tamanho, quantidade de células e cor base da paleta
main :: IO ()
main = do
  let
    -- Atributos gerais de cada paleta
    qntPalette = 4  -- Qtde de paletas (Necessário ser nro que forme uma matriz completa. Ex: 1,2,4,6,9,12,16...)
    lPalette = fromIntegral(round (sqrt qntPalette))      -- Qtde de LINHAS com paletas
    cPalette_ = fromIntegral(round (qntPalette/lPalette)) -- Qtde parcial de colunas com paletas
    cPalette                                              -- Qtde de COLUNAS com paletas
      | qntPalette/lPalette > cPalette_ = cPalette_ + 1 
      | otherwise = cPalette_

    -- Atributos de cada paleta
    lCell = 9     -- Qtde total de LINHAS
    cCell = 5     -- Qtde total de COLUNAS
    width = 40    -- Largura de cada célula
    height = 20   -- Altura de cada célula
    
    -- Atributos gerais do arquivo
    widthSVG = (width*cCell*cPalette+(10*cPalette))
    heightSVG = (height*lCell*cPalette+(10*lPalette))

    -- Aplicação dos atributos e criação das paletas
    cellNum = cellNumeration lCell cCell
    style = cellStyle qntPalette (lCell-1) (cCell-1) cellNum
    rects = zip style [(xy, width, height) 
      | xy <- cellPositions lPalette cPalette lCell cCell width height cellNum]
    -- Exemplo de elemento contido em rects = [("fill:hsl...",((1.0,1.0),40.0,20.0))]
  writeFile "colors-p2.svg" $ writeRects widthSVG heightSVG rects
