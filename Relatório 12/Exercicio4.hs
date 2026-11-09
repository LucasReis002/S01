data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String, servico :: String, valor :: Double, etapa :: Etapa}

descrever :: Atendimento -> String
descrever atendimento =
  cliente atendimento ++ " - " ++ servico atendimento ++ " - R$ " ++ show (valor atendimento) ++ " - " ++ show (etapa atendimento)
concluir :: Atendimento -> Atendimento
concluir atendimento = atendimento { etapa = Concluido }
arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\atendimento -> etapa atendimento == Concluido) atendimentos))

main :: IO ()
main = do
  let atendimentoAna =Atendimento { cliente = "Joao", servico = "Banho 10 min", valor = 50.0, etapa = NaFila}
  let atendimentoBruno = Atendimento{ cliente = "Maria", servico = "Banho 20 min", valor = 80.0 , etapa = NoBanho }
  let atendimentoCarla = Atendimento{ cliente = "Pedro", servico = "Banho 30 min", valor = 65.0, etapa = NaFila}
  let atendimentos = [atendimentoAna, atendimentoBruno, atendimentoCarla]
  let atendimentosAtualizados = [ concluir atendimentoAna, concluir atendimentoBruno, atendimentoCarla]


  mapM_ putStrLn (map descrever atendimentos)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atendimentos))
  mapM_ putStrLn (map descrever atendimentosAtualizados)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atendimentosAtualizados))
