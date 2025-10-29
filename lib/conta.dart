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
