data Esboco = Esboco
  { titulo :: String, tecnica :: String, horas :: Int}

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno está vazio."
esbocoMaisRecente (e:_) = titulo e ++ " - " ++ tecnica e
contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto
horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno = [ Esboco "Castelo" "Nanquim" 4 , Esboco "Floresta" "Carvão" 3, Esboco "Ruinas" "Grafite" 2]

  
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Quantidade de esboços: " ++ show (contarEsbocos caderno))
  putStrLn ("Horas desenhando: " ++ show (horasDesenhando caderno))
  putStrLn (esbocoMaisRecente [])
  let novoCaderno = Esboco "Dragão" "Nanquim" 5 : caderno
  putStrLn ("Original: " ++ esbocoMaisRecente caderno)
  putStrLn ("Quantidade no original: " ++ show (contarEsbocos caderno))
  putStrLn ("Novo: " ++ esbocoMaisRecente novoCaderno)
  putStrLn ("Quantidade no novo: " ++ show (contarEsbocos novoCaderno))
