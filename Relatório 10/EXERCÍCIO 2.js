class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;
    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }
    usarHabilidade() {
        throw new Error(`${this.codinome} deve implementar usarHabilidade()`);
    }
    entrarEmCombate() {
        console.log(
            `${this.codinome} esta usando uma pistola ${this.#pistola.modelo} ${this.usarHabilidade()}`
        );
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return 'E usou fumaça';
    }
}
class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return 'E usou reconhecimento';
    }
}
class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return 'Avançando!';
    }
}
class Esquadrao {
    #agentes;

    constructor(nome, agentes = []) {
        this.nome = nome;
        this.#agentes = agentes;
    }
    iniciarPartida() {
        console.log(`${this.nome}`);

        this.#agentes.forEach(agente => {
            agente.entrarEmCombate();
        });
    }
    listarControladores() {
        return this.#agentes.filter(
            agente => agente instanceof Controlador
        );
    }

}

const omen = new Controlador('Omen', 'Ghost');
const brimstone = new Controlador('Bristone', 'Classic');
const sova = new Iniciador('Sova', 'Sherif');
const jett = new Duelista('Jet', 'Frezy');

const alpha = new Esquadrao('Alpha', [
    omen,
    brimstone,
    sova,
    jett
]);
alpha.iniciarPartida();
alpha.listarControladores().forEach(agente => {
    console.log(`${agente.codinome}`);
});
const agenteGenerico = new AgenteProtocolo('Agente X', 'Classic');

// agenteGenerico.entrarEmCombate();