
import 'package:anybank/conta.dart';

void main() {
 Conta contaMatheus = Conta("Matheus", 1000);
 Conta contaRoberta = Conta("Roberta", 2000);
 ContaCorrente conta1 = ContaCorrente("Chris", 4000);
 ContaPoupanca conta2 = ContaPoupanca("Denize", 4000);

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

}
