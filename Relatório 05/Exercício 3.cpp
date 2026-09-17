#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    float maxima;
    float atual;
    int opcao;

    atual = 0.0;
    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> maxima;

    do {
        cout <<endl<< "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: " << endl;
        cin >> opcao;

        switch (opcao) {
            case 1: {
                float disponivel = maxima - atual;

                cout << fixed << setprecision(2);
                cout << "Carga Atual: " << atual << " kg/ " << maxima << " kg" << endl;
                cout << "Espaco Disponivel: " << disponivel << " kg" << endl;
                break;
            }

            case 2: {
                float pesopac;

                cout << "Digite o peso do pacote a ser carregado (kg): " << endl;
                cin >> pesopac;

                if (atual + pesopac > maxima) {
                    cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
                }else {
                    atual += pesopac;
                    cout << "Pacote adicionado com sucesso!" << endl;}
                break;
            }

            case 3: {
                float remover;

                cout << "Informe o peso a ser removido (kg): " << endl;
                cin >> remover;

                
                if (remover > atual) {
                    cout << "Alerta: Peso maximo excedido! Operacao cancelada."<<endl;
                }
                else {
                    atual -= remover;
                    cout << "Pacote removido com sucesso!" << endl;
                }
                break;
            }

            case 4:{
                cout << "Encerrando sistema de telemetria .." << endl;
                break;
            }

        }

    } while (opcao != 4);

    return 0;
}