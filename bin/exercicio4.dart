// 2. Produzindo uma conta salário com herança
// Continuando o projeto Any Bank, é hora de criar um terceiro tipo de conta: 
// a conta salário. Assim como as classes conta corrente e conta poupança,
//  ela possui duas características essenciais: o titular e o saldo.
// Escreva o código da classe ContaSalario e um objeto de conta salário
// de uma pessoa chamada Catarina (ou qualquer nome que você desejar). Se quiser,
//  imprima o saldo da pessoa no terminal.

// Dicas:

// Crie o código da classe ContaSalario e faça a instanciação 
// do objeto contaSalarioCatarina;
// Empregue a técnica de herança para evitar a repetição de código;
// Apenas declare a classe. Não é preciso fazer nada além disso.

// //3. Incrementando a conta salário com polimorfismo
// Agora, vamos melhorar a classe da conta salário. Você deve saber que a
// contaSalario tem duas características em comum com as contas corrente
// e poupança: titular e saldo. No entanto, ela apresenta três características diferentes:

// Variável com o CNPJ da empresa que emprega o(a) titular da conta;
// Variável do nome da empresa;
// Um método (função print) que diz algo como: “O salário da $empresa, de CNPJ X no valor de R$xx.x, foi depositado!”
// Aplique essas três características na classe contaSalario!

// Dica:

// Aplique a técnica de polimorfismo para diferenciar a conta salário das contas corrente e poupança.

void main() {
 Conta contaMatheus = Conta("Matheus", 1000);
 Conta contaRoberta = Conta("Roberta", 2000);
 ContaCorrente conta1 = ContaCorrente("Chris", 4000);
 ContaPoupanca conta2 = ContaPoupanca("Denize", 4000);
 ContaSalario conta3 = ContaSalario("Sabrina", 600);

 //List<Conta> contas = <Conta>[contaMatheus,contaRoberta];


 contaRoberta.receber(3000);
 contaMatheus.receber(500);
 contaMatheus.enviar(200);
 conta1.imprimirSaldo();
 conta1.enviar(4300);
 conta2.imprimirSaldo();
 conta2.enviar(4300);
 conta2.calcularRendimento();
 conta2.imprimirSaldo();
 conta3.imprimirSaldo();
 conta3.depositoSalario(5000, "1231231230001/12","Servicos LTDA");
 conta3.imprimirSaldo();

}

class Conta{
    String titular;
    double _saldo;

    Conta(this.titular, this._saldo);

    void receber(double valor){
        _saldo += valor;
        imprimirSaldo();
    }

    void enviar(double valor){
        if(_saldo >= valor){
         _saldo -= valor;
         imprimirSaldo();      
        }
    }

    void imprimirSaldo(){
      print("O Titular: $titular Saldo: R\$ $_saldo");
    }
}
class ContaCorrente extends Conta{
  double emprestimo = 300;
  ContaCorrente(super.titular,super._saldo);

  @override
   void enviar(double valor){
        if(_saldo + emprestimo >= valor){
         _saldo -= valor;
         imprimirSaldo();      
        }
    }
}
class ContaPoupanca extends Conta{
  double rendimento = 0.05;

  ContaPoupanca(super.titular,super._saldo);

  void calcularRendimento(){
    _saldo += _saldo * rendimento;
  }

}
class ContaSalario extends Conta{
  
  ContaSalario(super.titular,super._saldo);



  void depositoSalario(double salario, String cnpj, String nomeEmpresa){
    receber(salario);
    print("O salário da $nomeEmpresa, de CNPJ $cnpj no valor de R$salario foi depositado!");
  }

}

