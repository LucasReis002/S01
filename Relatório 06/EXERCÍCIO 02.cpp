#include <iostream>
using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    void setNome(string nome) {
        this->nome = nome;
    }
    string getNome() {
        return nome;
    }
    void setArcana(string arcana) {
        this->arcana = arcana;
    }
    string getArcana() {
        return arcana;
    }
    void setRank(int rank) {
        this->rank = rank;
    }
    int getRank() {
        return rank;
    }
    void subirRank() {
        rank++;
    }};

int main() {
    LinkSocial l;

    l.setNome("John");
    l.setArcana("Enemies");
    l.setRank(1);
    l.subirRank();

    cout << "Nome: " << l.getNome() << endl;
    cout << "Arcana: " << l.getArcana() << endl;
    cout << "Rank: " << l.getRank() << endl;
    return 0;
}