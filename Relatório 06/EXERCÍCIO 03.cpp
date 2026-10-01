#include <iostream>
using namespace std;

class MembroInatel {
public:
    string nome;
    MembroInatel(string n) : nome(n) {}
    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }
};
class Aluno : public MembroInatel {
public:
    string curso;
    Aluno(string n) : MembroInatel(n) {}
    void seApresentar() override {
        cout << "Meu nome é " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};
class Professor : public MembroInatel {
public:
    string disciplina;
    Professor(string n) : MembroInatel(n) {}
    void seApresentar() override {
        cout << "Meu nome é " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    Aluno aluno("Joao");
    Professor prof("Pedro");

    aluno.curso = "GES";
    prof.disciplina = "Fisica";
    aluno.seApresentar();
    prof.seApresentar();

    return 0;
}