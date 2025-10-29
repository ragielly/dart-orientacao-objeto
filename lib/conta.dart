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
