    abstract class Conta{
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

mixin Imposto{
  double taxa = 0.03;

  double valorTaxado(double valor){
    return valor * taxa;
  }
}

class ContaEmpresa extends Conta with Imposto{
  ContaEmpresa(super.titular,super._saldo);

  @override
  void enviar(double valor) {
    if(_saldo >= valor + valorTaxado(valor)){
      _saldo -= _saldo + valorTaxado(valor); 
    }
   
  }

  @override
  void receber(double valor) {
   _saldo += valor - valorTaxado(valor);
  }
}

class ContaInvestimento extends Conta with Imposto{
  ContaInvestimento(super.titular,super._saldo);

  @override
  void enviar(double valor) {
   
  }

  @override
  void receber(double valor) {
   
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
