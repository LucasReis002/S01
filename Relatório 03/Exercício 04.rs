use std::io;
fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64{

    let mut npt=(prova1+prova2)/2.0;
    let mut pf=npt*0.6+redacao*0.4;

    if pf >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo.");
    } else {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
    }

    

    pf
}

fn main() {
    let mut entrada = String::new();

    println!("Digite a nota da Prova Teorica 1: ");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let mut prova1: f64 = entrada.trim().parse().unwrap_or(0.0);
    entrada.clear();

    println!("Digite a nota da Prova Teorica 2: ");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let mut prova2: f64 = entrada.trim().parse().unwrap_or(0.0);
    entrada.clear();

    println!("Digite a nota da Redacao: ");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let mut redacao: f64 = entrada.trim().parse().unwrap_or(0.0);

    let mut resultado = calcular_pontuacao(prova1, prova2, redacao);
    println!("Pontuacao Final: {}", resultado);

}
