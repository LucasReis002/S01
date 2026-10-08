using System;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public string Armamento { get; private set; } = "Desarmado";
    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;

        Console.WriteLine($"[Gondor] {Nome} foi convocado.");
    }
    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }
    public void ApresentarUnidade()
    {
        Console.WriteLine("\nCombatente");
        Console.WriteLine($"Nome: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");

        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Exercito de Gondor");
        CombatenteDeGondor soldado1 =
            new CombatenteDeGondor("Beregond", "Gondoriano", "Soldado");

        CombatenteDeGondor soldado2 =
            new CombatenteDeGondor("Faramir", "Gondoriano", "Capitão");

        CombatenteDeGondor soldado3 =
            new CombatenteDeGondor("Pippin", "Hobbit", "Soldado");

        soldado1.Equipar("Espada");
        soldado2.Equipar("Arco");
        soldado1.ApresentarUnidade();
        soldado2.ApresentarUnidade();
        soldado3.ApresentarUnidade();
        // soldado1.Posto = "General";
        Console.WriteLine("\nFim");
    }
}