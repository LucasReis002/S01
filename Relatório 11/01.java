
abstract class Morador {
    private String nome;
    public Morador(String nome) {
        this.nome = nome;
    }
    public String getNome() {
        return nome;
    }
    public abstract void apresentar();
}

class Mago extends Morador {
    private String feitico;
    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;}
    @Override
    public void apresentar() {
        System.out.println("Sou " + getNome() +",meu feitico e " + feitico);}
}

class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }
    @Override
    public void apresentar() {
        System.out.println("Sou " + getNome() +",e faco o castelo andar!");}
}

public class Main {
    public static void main(String[] args) {

        Morador morador1 = new Mago("Mago", "Bola de fogo");
        Morador morador2 = new DemonioDoFogo("Engenheiro");
        morador1.apresentar();
        morador2.apresentar();

        // Morador morador3 = new Morador("Generico");
    }
}
