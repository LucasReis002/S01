import java.util.ArrayList;
abstract class Monstro {
    private String nome;
    public Monstro(String nome) {
        this.nome = nome;}

    public String getNome() {
        return nome;
    }
    public abstract String receita();
}
class Slime extends Monstro {

    public Slime(String nome) {
        super(nome);
    }
    @Override
    public String receita() {
        return "Fritar o slime.";}
}
class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Assar a mandragora.";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material; }
    public String getMaterial() {
        return material;}
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();}
    public void adicionarIngrediente(Monstro monstro) {
        this.ingredientes.add(monstro);}
    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome);
        System.out.println("Material da panela: " + panela.getMaterial());
        System.out.println("\nIngredientes:");

        for (Monstro monstro : ingredientes) {
            System.out.println("Monstro: " + monstro.getNome());
            System.out.println("Receita: " + monstro.receita());
        }}
}

public class Main {
    public static void main(String[] args) {

        Slime slime = new Slime("Slime");
        Mandragora mandragora = new Mandragora("Mandragora");
        Cozinheiro cozinheiro = new Cozinheiro("Jon", "Ferro");

        cozinheiro.adicionarIngrediente(slime);
        cozinheiro.adicionarIngrediente(mandragora);
        cozinheiro.servirBanquete();
    }
}
