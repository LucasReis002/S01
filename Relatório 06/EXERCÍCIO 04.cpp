#include <iostream>
#include <vector>
using namespace std;

class Hobbit {
public:
    string nome;

    Hobbit(string n) : nome(n) {}

    virtual void fazerAtividade() {
        cout << "O hobbit " << nome<< " está aproveitando um dia tranquilo na Comarca."<< endl;
    }
};

class Jardineiro : public Hobbit {
public:
    Jardineiro(string nome) : Hobbit(nome) {}

    void fazerAtividade() override {
        cout << "O jardineiro " << nome << " está cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

class Cozinheiro : public Hobbit {
public:
    Cozinheiro(string nome) : Hobbit(nome) {}

    void fazerAtividade() override {
        cout << "O cozinheiro " << nome<< " está preparando o segundo café da manhã para os convidados!"<< endl;
    }
};

class Fazendeiro : public Hobbit {
public:
    Fazendeiro(string nome) : Hobbit(nome) {}

    void fazerAtividade() override {
        cout << "O fazendeiro " << nome<< " está colhendo vegetais e hortaliças em suas terras!"<< endl;
    }
};

int main() {
    vector<Hobbit*> hobbits;


    hobbits.push_back(new Jardineiro("Frodo"));
    hobbits.push_back(new Cozinheiro("Sam"));
    hobbits.push_back(new Fazendeiro("Bilbo"));
    for (Hobbit* hobbit : hobbits) {
        hobbit->fazerAtividade();
    }

    return 0;
}