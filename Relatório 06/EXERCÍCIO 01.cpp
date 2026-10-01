#include <iostream>
#include <vector>
using namespace std;

class Banda {
protected:
    int integrantes;
    float potenciaSom;
    
public:
    string nome;
    int energia;
    Banda(string n, int i, float p, int e): nome(n), integrantes(i), potenciaSom(p), energia(e) {}

    void duelar(Banda &rival) {
        cout << nome << " esta duelando contra " << rival.nome << "!" << endl;
        rival.energia -= potenciaSom;
    }
};

int main() {
    vector<Banda*> bandas;
    bandas.push_back(new Banda("Imagine dragons",5,20,100));
    bandas.push_back(new Banda("Dragons",4,15,100));

    bandas[0]->duelar(*bandas[1]);

    cout << "\nStatus das bandas:" << endl;
    cout << bandas[0]->nome << " - Energia: " << bandas[0]->energia << endl;
    cout << bandas[1]->nome << " - Energia: " << bandas[1]->energia << endl;

    return 0;
}