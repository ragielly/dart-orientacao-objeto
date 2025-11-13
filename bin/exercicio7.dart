// 6. Criando um programa informativo de espécies de seres vivos
// Este exercício será um pouco mais desafiador.

// Crie um programa que mostra características sobre os seres vivos e implemente três classes, seguindo os requisitos de cada uma:
// Classe SerVivo: será uma classe abstrata que terá um método void mostrarCaracteristicas();.
// Planta: será uma classe que implementa SerVivo e terá os seguintes objetos e suas descrições de print:
// Girassol: ;
// Laranjeira: é uma planta, não tem os cinco sentidos, é uma árvore;
// Animal: é vivo e tem os cinco sentidos:
// Ser humano: tem cinco sentidos, pensa e fala, é bípede e vive em média 75 anos;
// Gato: tem cinco sentidos, mia, é quadrúpede e vive em média 20 anos;
// Cão: tem cinco sentidos, late, é quadrúpede e vive em média 20 anos.
// Represente essas coisas do mundo real com classe, classe abstrata, herança e polimorfismo de orientação a objetos.

void main(){
  Planta planta1 = Planta("Girassol", "Flor");
  Planta planta2 = Planta("Pinheiro", "Arvore");
  Animal animal1 = Animal("Humano", "Fala", 75);
  Animal animal2 = Animal("Cão", "Late", 20);
  Animal animal3 = Animal("Gato", "Mia", 20);

  planta1.mostrarCaracteristicas();
  planta2.mostrarCaracteristicas();
  animal1.mostrarCaracteristicas();
  animal2.mostrarCaracteristicas();
  animal3.mostrarCaracteristicas();


}

abstract class SerVivo{
  String nome;
  String tipo;

  SerVivo(this.nome, this.tipo);
  void mostrarCaracteristicas(){ 
  }
}

class Planta extends SerVivo{
  
  Planta(String nome, String tipo) : super( nome ,tipo );
  @override
  void mostrarCaracteristicas() {
     print("$nome : é uma planta, não tem os cinco sentidos, é uma $tipo");
  }

}
class Animal extends SerVivo{
  int estimativa;
  Animal(String nome, String tipo, this.estimativa) : super( nome ,tipo );
  @override
  void mostrarCaracteristicas() {
    return print("$nome : tem cinco sentidos, $tipo, é quadrúpede e vive em média $estimativa anos");
  }

}