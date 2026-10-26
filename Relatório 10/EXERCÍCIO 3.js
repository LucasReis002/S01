class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }
    descrever() {
        return `Criatura: ${this.criatura} | Nivel de perigo: ${this.nivelDePerigo}`;
    }
}
class DiarioMisterioso {
    #fichas;
    constructor(numero) {
        this.numero = numero;
        this.#fichas = [];
    }
    anotar(criatura, nivelDePerigo) {
        const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(ficha);
    }
    exibirFichas() {
        console.log(`\nDiario ${this.numero}`);

        this.#fichas.forEach(ficha => {
            console.log(ficha.descrever());
        });
    }
}
class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}
class CabanaDoMisterio {
    #funcionarios;

    constructor(dono) {
        this.dono = dono;
        this.#funcionarios = [];
    }
    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }
    abrirAsPortas() {
        console.log(`Dono: ${this.dono}`);
        this.#funcionarios.forEach(funcionario => {
            console.log(`${funcionario.nome}: ${funcionario.cargo}`);
        });
    }
}

const diario = new DiarioMisterioso(3);

diario.anotar('zumbi', 4);
diario.anotar('vampiro', 10);
diario.anotar('fantasma', 2);
diario.exibirFichas();
const dipper = new Funcionario('Sam', 'Atendente');
const mabel = new Funcionario('Dean', 'Atendente');
const cabana = new CabanaDoMisterio('Tio Avo');
cabana.contratar(dipper);
cabana.contratar(mabel);
cabana.abrirAsPortas();