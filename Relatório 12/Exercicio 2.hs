pesoMaximo :: Double
pesoMaximo = 15.0

data Encomenda = Encomenda
  { destinatario :: String, peso :: Double, frete :: Double
  }
descrever :: Encomenda -> String
descrever encomenda =
  destinatario encomenda
    ++ " - Peso: " ++ show (peso encomenda)
    ++ " kg - Frete: R$ " ++ show (frete encomenda)
cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas =
  filter (\encomenda -> peso encomenda <= pesoMaximo) encomendas
totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas =
  sum (map frete encomendas)


main :: IO ()
main = do
  let encomendas = [ Encomenda "Caixa" 5.0 12.0, Encomenda "Mesa" 8.5 18.0, Encomenda "TV" 17.0 25.0, Encomenda "Geladeira" 12.0 20.0]
  let encomendasPermitidas = cabemNaVassoura encomendas

  
  mapM_ putStrLn (map descrever encomendas)
  mapM_ putStrLn (map descrever encomendasPermitidas)
  putStrLn ("Total de fretes: R$ " ++ show (totalDeFretes encomendasPermitidas))
