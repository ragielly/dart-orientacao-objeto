
import 'package:anybank/conta.dart';

void main() {

 ContaCorrente conta1 = ContaCorrente("Chris", 4000);
 ContaPoupanca conta2 = ContaPoupanca("Denize", 4000);
 ContaEmpresa contaMatheus = ContaEmpresa("Matheus", 2000);
 ContaInvestimento contaRoberta = ContaInvestimento("Roberta", 2000);

 //List<Conta> contas = <Conta>[contaMatheus,contaRoberta];

 conta1.imprimirSaldo();
 conta1.enviar(4300);
 conta2.imprimirSaldo();
 conta2.enviar(4300);
 conta2.calcularRendimento();
 conta2.imprimirSaldo();

  contaMatheus.enviar(1000);
  contaRoberta.receber(1000);

}
