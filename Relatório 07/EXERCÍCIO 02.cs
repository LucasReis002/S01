using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }
    public Pokemon(string especie, int nivel){
        this.Especie = especie;
        this.Nivel = nivel;
        Console.WriteLine($"[Pokemon] {Especie} foi criado.");
    }
    public virtual void Atacar(){
        Console.WriteLine($"\n{Especie}");
        Console.WriteLine("Ataque comum!");
    }
}
public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel)
        : base(especie, nivel){
    }

    public override void Atacar(){
        Console.WriteLine($"\n{Especie}");
        Console.WriteLine("Chicote de Vinha!");

    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel)
        : base(especie, nivel)
    {
    }
    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine("Choque do trovao!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Batalha Pokémon");

        List<Pokemon> pokemons = new List<Pokemon>();
        pokemons.Add(new Pokemon("Charmander", 10));
        pokemons.Add(new TipoPlanta("Chicorita", 15));
        pokemons.Add(new TipoEletrico("Pikachu", 20));

        foreach (var pokemon in pokemons){
            pokemon.Atacar();
        }

        Console.WriteLine("\nFim da Batalha");
    }
}