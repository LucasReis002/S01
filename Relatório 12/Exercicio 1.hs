data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) =
  nome ++ " - R$ " ++ show preco
forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte" | intensidade >= 5 = "Equilibrado" | otherwise = "Suave"
precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido pediuLeite (Cafe _ preco _ ) =
  if pediuLeite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let cafeSuave = Cafe "Cafe toninho" 8.50 3
  let cafeEquilibrado = Cafe "Cafe Evoluto" 10.00 6
  let cafeForte = Cafe "Cafe Tres Coracoes" 12.50 9

  putStrLn (descrever cafeSuave ++ " - " ++ forca cafeSuave)
  putStrLn (descrever cafeEquilibrado ++ " - " ++ forca cafeEquilibrado)
  putStrLn (descrever cafeForte ++ " - " ++ forca cafeForte)
  print (precoDoPedido True cafeEquilibrado)
  print (precoDoPedido False cafeEquilibrado)
