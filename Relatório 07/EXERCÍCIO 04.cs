using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";
    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
        Console.WriteLine($"[Entidade] {Nome} foi criada.");
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"\n {Nome}");
        if (Origem != "Desconhecida"){
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome)
        : base(nome)
 {
    }

    public override void Manifestar()
    {
        Console.WriteLine($"\n{Nome}");
        Console.WriteLine("A entidade se manifesta!");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome)
        : base(nome)
    {
    }
    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine("A entidade se manifesta!");
    }
}

public class Pesquisador
{
    public string Nome { get; set; }
    private List<EntidadeCosmica> _catalogo;
    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this._catalogo = new List<EntidadeCosmica>();
        Console.WriteLine($"[Pesquisador] {Nome}.");
    }

    public void Catalogar(EntidadeCosmica e)
    {
        this._catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\nCatálogo de {Nome}");


        foreach (var entidade in _catalogo)
        {
            entidade.Manifestar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Biblioteca Miskatonic");

        Profundo profundo =
            new Profundo("Dagon");
        MiGo migo =
            new MiGo("Mi-Go");
        profundo.Origem = "Oceano Pacífico";

        Pesquisador pesquisador =
            new Pesquisador("Henry Armitage");
        pesquisador.Catalogar(profundo);
        pesquisador.Catalogar(migo);

        pesquisador.LerCatalogo();

        Console.WriteLine("\nFim da Pesquisa");
    }
}