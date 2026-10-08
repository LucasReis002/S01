using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";
    public void Abrir()
    {
        Console.WriteLine("\nGrimório");
        Console.WriteLine($"Feitiço favorito: {FeiticoFavorito}");
    }
}
public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }
    public Companheiro(string nome, string funcao){
        this.Nome = nome;
        this.Funcao = funcao;
        Console.WriteLine($"[Companheiro] {Nome} foi criado.");
    }

    public void Apresentar(){
        Console.WriteLine($"Nome: {Nome} | Função: {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    private Grimorio _grimorio;
    private List<Companheiro> _companheiros;
    public Maga(string nome){
        this.Nome = nome;
        this._grimorio = new Grimorio();
        this._companheiros = new List<Companheiro>();
        Console.WriteLine($"[Maga] {Nome}");
    }

    public void Recrutar(Companheiro c)
    {
        this._companheiros.Add(c);
    }

    public Grimorio ObterGrimorio(){
        return this._grimorio;
    }
    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo de {Nome}");

        foreach (var companheiro in _companheiros){
            companheiro.Apresentar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Jornada de Frieren");

        Companheiro fern =
            new Companheiro("Fern", "Maga");
        Companheiro stark =
            new Companheiro("Stark", "Guerreiro");
        Maga frieren = new Maga("Frieren");

        frieren.Recrutar(fern);
        frieren.Recrutar(stark);
        frieren.ObterGrimorio().FeiticoFavorito = "zoltrak";
        frieren.MostrarGrupo();
        frieren.ObterGrimorio().Abrir();
        Console.WriteLine("\nFim da Jornada");
    }
}