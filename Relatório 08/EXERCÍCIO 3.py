class Persona:
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano
    def invocar(self):
        print(f"Persona: {self.nome} | Arcano: {self.arcano}")

class Aliado:
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome

class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome
        self.persona = Persona("Arsene", "Louco")
        self._equipe: list[Aliado] = []
    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)
        print(f"{aliado.codinome} foi recrutado!")
    def infiltrar(self, palacio: str):
        print(f"\n{self.codinome} invadiu o Palacio de {palacio}!")
        self.persona.invocar()
        print("\nEquipe Phantom Thieves")

        for aliado in self._equipe:
            print(f"{aliado.codinome} | Nome: {aliado.nome}")

if __name__ == "__main__":

    aliado1  = Aliado("Morgana", "Mona")
    aliado2 = Aliado("Ryuji Sakamoto", "Skull")
    joker = Lider("Joker")
    joker.recrutar(aliado1)
    joker.recrutar(aliado2)
    joker.infiltrar("Kamoshida")