//1. Criando uma classe para itens de estoque
//Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos.
//Sua tarefa é criar uma classe chamada ItemEstoque que deverá armazenar informações sobre o nome do produto
//e a quantidade em estoque. Em seguida, você deve instanciar dois itens: um para "Smartphone", com 100
//unidades em estoque, e outro para "Notebook", com 50 unidades. Por fim, você deve imprimir as informações
//desses itens no terminal.

// 2. Implementando operações de entrada e saída de estoque
// Agora que criou a classe ItemEstoque, você precisa adicionar funcionalidades para registrar entradas e saídas
// de produtos no estoque. Implemente métodos dentro da classe ItemEstoque para realizar essas operações. Teste 
// esses métodos registrando uma entrada de 20 unidades para o "Smartphone" e uma saída de 10 unidades do "Notebook".
//  Por último, imprima as novas quantidades em estoque no terminal.

// 3. Gerenciando múltiplos itens de estoque
// Você percebeu que a loja possui muitos produtos. Sua tarefa agora é fazer uma lista que armazena várias instâncias da
// classe ItemEstoque. Em seguida, implemente um laço de repetição que percorra essa lista e imprima as informações de
// cada item em estoque. Para testar, crie pelo menos três itens com diferentes produtos e quantidades, adicione-os à
// lista e exiba os detalhes de todos os itens cadastrados.

// 4. Atualizando o preço dos itens
// Agora que você já tem um controle de estoque, vamos acrescentar mais uma funcionalidade ao sistema:
//  o controle de preços dos produtos. Sua tarefa é adicionar um novo atributo preco à classe ItemEstoque.
// Em seguida, implemente um método que permita alterar o preço de um item específico. Crie três itens,
// defina seus preços iniciais e depois altere o preço de um deles. Por fim, imprima o nome do produto,
// sua quantidade em estoque e o preço atualizado.

void main(){
  ItensEstoque item1 = ItensEstoque("notebook", 50,2000);
  ItensEstoque item2 = ItensEstoque("smartphone", 100,1400);
  ItensEstoque item3 = ItensEstoque("Smart TV", 100,2400);

  List<ItensEstoque> itens = <ItensEstoque>[item1,item2,item3];

  for (ItensEstoque item in itens) {
    print('Produto ${item.nomeProduto}: Quantidade Estoque: ${item.qtdEstoque} / preco : ${item.precoProduto}');
  }

  //entrada
  item2.entradaEstoque(20); 
  //saida
  item1.saidaEstoque(10);
  //alterando o preco
  item1.precoProduto = 1900;

  print("=========Adicionado saida e entrada de itens======");

  for (ItensEstoque item in itens) {
    print('Produto ${item.nomeProduto}: Quantidade Estoque: ${item.qtdEstoque}/ preco : ${item.precoProduto}');
  }


}

class ItensEstoque {
  String nomeProduto;
  int qtdEstoque;
  double precoProduto;

  ItensEstoque(this.nomeProduto,this.qtdEstoque,this.precoProduto);

  void entradaEstoque(int valor){
    qtdEstoque += valor;
  }

  void saidaEstoque(int valor){
    if(qtdEstoque <= valor){
      qtdEstoque -= valor;
    }else{
      print("Quantidade maior que o estoque atual.");
    }
  }
}