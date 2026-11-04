import java.util.HashMap;
interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;
    public Alienigena(String nome) {
        this.nome = nome;}
    @Override
    public void manifestar() {
        System.out.println(nome +" apareceu com  tecnologia alienigena");
    }
}
class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome +" surgiu como espirito misterioso");}
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;
    public MapaDeAvistamentos() {
        avistamentos = new HashMap<>();}
    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);}

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);
        if (ser == null) {
            System.out.println(local + " esta tranquilo");
        } else {
            System.out.println("avistamento na " + local);
            ser.manifestar();}
    }
}

public class Main {
    public static void main(String[] args) {

        Alienigena alien = new Alienigena("Alien");
        EspiritoYoukai youkai = new EspiritoYoukai("Vovo turbo");
        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Escola", alien);
        mapa.registrar("Floresta", youkai);
        mapa.investigar("Escola");
        mapa.investigar("Floresta");
        mapa.investigar("Hospital");
    }
}
