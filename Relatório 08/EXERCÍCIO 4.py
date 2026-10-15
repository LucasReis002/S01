from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass
class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, modelo: str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo)
    def executar_invasao(self):
        print(f"{self.nome} usando o cyberdeck "f"{self.cyberdeck.modelo} está quebrando o gelo "f"(ICE) de um servidor")

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: str):
        self.codigo = codigo
    def executar_invasao(self):
        print(f"Drone {self.codigo} está interceptando "f"o sinal da rede!")

class CelulaHacker:
    def __init__(self, nome: str,
                 membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"celula {self.nome}: iniciando ataque")

        for membro in self.membros:
            membro.executar_invasao()

if __name__ == "__main__":

    netrunner = OperadorNetrunner("V", "Arasaka m4")
    drone = DroneDeVigilancia("1")
    membros: list[IUnidadeDeRede] = [netrunner, drone]
    celula = CelulaHacker("hackers", membros)
    celula.iniciar_ataque()

    # unidade = IUnidadeDeRede()