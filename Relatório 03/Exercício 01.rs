use std::io;
fn validar_placa(placa:&str) -> bool {
    let mut maiusculas: i32 = placa.trim().parse().unwrap_or(0);
    let mut numeros: i32 = placa.trim().parse().unwrap_or(0);
    
    for c in placa.chars() {
        if c.is_digit(10) {
            numeros = numeros + 1;
        }
        if c.is_ascii_uppercase() {
            maiusculas = maiusculas + 1;
        }
    }

    placa.len() > 6 && maiusculas >= 3 && numeros > 1
}

fn main() {
    let mut entrada = String::new();
    loop {
        println!("Digite a placa do veiculo: ");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        let resultado = validar_placa(&entrada);
        if resultado == true {
            break;
        }
        println!("Placa invalida. Tente novamente!");
    }
    println!("Placa cadastrada no sistema!");
}