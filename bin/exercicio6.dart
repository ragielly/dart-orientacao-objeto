//5. Criando um programa de registro de funcionários
//Primeiro, crie uma classe abstrata funcionario com os atributos nome de funcionário(a) e um double “salário base” inicializado em 3000 reais, e também um método calcularSalario. 
//Em seguida, implemente, a partir de funcionario, as classes analista, gerente e diretor; sobrescreva o método calcularSalario nelas com os seguintes valores:

// analista: salário base = salário base + salário base multiplicado por 1.2;
// gerente: salário base = salário base + salário base multiplicado por 1.5;
// diretor: salário base = salário base + salário base multiplicado por 2.0.
// Por fim, imprima o cálculo de salário dos funcionários João (analista), Maria (gerente) e Giovana (diretora), conforme o exemplo a seguir:

// Salário do Analista João: R$ 6600.0
// Salário da Gerente Maria: R$ 7500.0   
// Salário da Diretora Giovana: R$ 9000.0


void main(){

   Analista a = Analista("Joao");
   Gerente g = Gerente("Maria");
   Diretor d = Diretor("Giovana");
   a.calcularSalario();
   g.calcularSalario();
   d.calcularSalario();
  // print(a.salario);
  

}

abstract class Funcionario{
  String nome;
  double salario;
  

  Funcionario(this.nome) : salario=3000; // iniciando uma variavel com valor

  void calcularSalario(){

  }
}

class Analista extends Funcionario{
  Analista(super.nome);
// analista: salário base = salário base + salário base multiplicado por 1.2;
@override
  void calcularSalario() {
    salario = salario + (salario * 1.2);
    print("Salário do Analista $nome: R\$$salario");
  }
}
class Gerente extends Funcionario{
  Gerente(super.nome);
// gerente: salário base = salário base + salário base multiplicado por 1.5;
@override
  void calcularSalario() {
    salario = salario + (salario * 1.5);
    print("Salário do Analista $nome: R\$$salario");
  }
}
class Diretor extends Funcionario{
  Diretor(super.nome);
// diretor: salário base = salário base + salário base multiplicado por 2.0.
@override
  void calcularSalario() {
   salario = salario + (salario * 2.0);
   print("Salário do Analista $nome: R\$$salario");
  }
}