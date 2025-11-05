// //1. Criando classes de gatos e cachorros
// Crie uma classe Animal com um método emitirSom(). Em seguida,
//  crie duas outras classes: Cachorro e Gato, que herdam o método 
//  da classe Animal. Ao adicionar o método emitirSom() nas classes
//  Cachorro e Gato, utilize a anotação @override para indicar que estão
//   sobrescrevendo o método — o método emitirSom deve fazer um print
//    “O cachorro late” para Cachorro e “o gato miou” para Gato.

// Além disso, adicione métodos específicos para cada classe,
//  como abanarRabo() para o Cachorro e arranharMoveis() para o Gato.

void main(){
  Cachorro cao = Cachorro("Bob", 5);
  Gato gatinho = Gato("DonaCat", 1);

  cao.mostrarNome();
  cao.abanarRabo();
  cao.emitirSom();

  gatinho.mostrarNome();
  gatinho.arranharMoveis();
  gatinho.emitirSom();


}

abstract class Animal{
  String nome;
  int idade;

  Animal(this.nome,this.idade);


  void emitirSom(){
    print("$nome está fazendo barulho");

  }

  void mostrarNome(){
    print("Nome: $nome / Idade: $idade");
  }
}

class Cachorro extends Animal{
  Cachorro(super.nome, super.idade);

  @override
  void emitirSom(){
    print("O cachorro late");
  }

  void abanarRabo(){
    print("O cachorro está abanando o rabo");
  }
}
class Gato extends Animal{
  Gato(super.nome,super.idade);

  @override
  void emitirSom(){
    print("O gato mia");
  }

  void arranharMoveis(){
    print("Gato está arranhando o sofá");
  }

}