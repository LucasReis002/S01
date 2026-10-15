class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao
    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema!")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema!")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema!")
    def curar_equipe(self):
        print(f"{self.codinome} está curando!")

if __name__ == "__main__":
    soldado = HeroiOverwatch("soldado", "dano")
    reinhart = HeroiTanque("reinhart", "tanque")
    mercy = HeroiSuporte("mercy", "suporte")

    time: list[HeroiOverwatch] = [
        soldado,
        reinhart,
        mercy
    ]
    for heroi in time:
        heroi.usar_suprema()
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()