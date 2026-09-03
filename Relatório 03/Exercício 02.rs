use std::io;
fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool{
    let mut dif: i32 = 0;
    if palpite >= numero_secreto{
        dif = palpite - numero_secreto;
    }else{
        dif = numero_secreto - palpite;
    }
    dif <= 5
}

fn main() {
     let numero_secreto: i32 = 42;

    let mut dif: i32 = 0;
    let mut entrada = String::new();
    loop {
        println!("Digite seu palpite: ");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        let numero: i32 = entrada.trim().parse().unwrap_or(0);
        let resultado = acertou_o_alvo(numero,numero_secreto);
        if resultado == true {
            if numero >= numero_secreto{
                dif = numero - numero_secreto;
            }else{
                dif = numero_secreto - numero;
            }
            println!("Voce acertou! Ficou a apenas '{}' unidades do numero secreto!(42)", dif);
            break;
        }
        println!("Voce passou longe! Tente novamente."); 
    }
    
}