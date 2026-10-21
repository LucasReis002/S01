class Instrumentista
    attr_reader :nome, :instrumento
    def initialize(nome, instrumento)
      @nome = nome
      @instrumento = instrumento
    end
    def interpretar(peca)
      raise NotImplementedError, "#{self.class} deve implementar interpretar"
    end
  end
  class Solista < Instrumentista
    def interpretar(peca)
      puts "#{nome}, no #{instrumento},interpreta #{peca}, conduzindo a melodia principal."
    end
  end
  class Acompanhador < Instrumentista
    def interpretar(peca)
      puts "#{nome}, no #{instrumento},interpreta #{peca}, acompanhando o ritmo do solista."
    end
  end
  class Regente
    def initialize(nome)
      @nome = nome
      @orquestra = []
    end
    def convocar(instrumentista)
      @orquestra << instrumentista
    end
    def reger(peca)
      puts "\nRegente #{@nome} conduzindo: #{peca}"
  
      @orquestra.each do |instrumentista|
        instrumentista.interpretar(peca)
      end
    end
    def escalacao
      @orquestra.map do |instrumentista|
        "#{instrumentista.class}: #{instrumentista.nome}"
      end
    end

  end
  
  solista = Solista.new("Violinista", "Violino")
  acompanhador = Acompanhador.new("Pianista", "Piano")
  regente = Regente.new("Maestro")
  
  regente.convocar(solista)
  regente.convocar(acompanhador)
  regente.reger("Concerto")
  regente.escalacao.each do |texto|
    puts texto
  end

  # instrumentista.interpretar("Concerto")