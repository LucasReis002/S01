class PhoneWave
    def enviar_dmail(mensagem)
      puts "Mensagem: #{mensagem}"
      puts "D-Mail enviado!"
    end
  end
  class MembroDoLab
    attr_reader :numero, :nome
  
    def initialize(numero, nome)
      @numero = numero
      @nome = nome
    end
  end
  class LaboratorioDeGadgets
    def initialize
      @phonewave = PhoneWave.new
      @membros = []
    end
    def admitir(membro)
      @membros << membro
      puts "Lab Mem #{membro.numero} - #{membro.nome} foi admitido!"
    end

    def experimento(mensagem)
      @membros.each do |membro|
        puts "Lab Mem #{membro.numero}: #{membro.nome}"
      end
      @phonewave.enviar_dmail(mensagem)
    end

  end
  
  membro1 = MembroDoLab.new(1, "Cientista 1")
  membro2 = MembroDoLab.new(2, "Cientista 2")

  laboratorio = LaboratorioDeGadgets.new
  laboratorio.admitir(membro1)
  laboratorio.admitir(membro2)
  laboratorio.experimento("O experimento foi um sucesso!")