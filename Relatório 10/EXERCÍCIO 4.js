class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }
    atacar(alvo) {
        console.log(`${this.nome} atacou ${alvo.nome}!`);
    }
}
class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} aumentou a força e atacou ${alvo.nome}!`);
    }
}
class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} usou eletricidade e atacou ${alvo.nome}!`);
    }
}
class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} materializou uma arma e atacou ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }
    revelarAranhas() {
        console.log(`${this.cidade}`);
        this.#aranhas.forEach(aranha => {
            console.log(`Aranha ${aranha.numero}: ${aranha.nome}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(
            aranha => aranha.numero === numero
        );
    }
}

const Chrolo = new Aranha('Chrolo', 1);
const feitan = new Aranha('Feitan', 2);
const trupe = new TrupeFantasma('Yorknew', [Chrolo,feitan]);

trupe.revelarAranhas();
const alvo = trupe.buscarAranha(2);
if (alvo) {

    const hunters = [
        new Intensificador('Gon'),
        new Transmutador('Kilua'),
        new Materializador('Kurapika')
    ];
    hunters.forEach(hunter => {
        hunter.atacar(alvo);
    });
    
} else {
    console.log('Aranha não encontrada!');
}