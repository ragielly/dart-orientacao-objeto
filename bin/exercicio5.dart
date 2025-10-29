// 4. Representando quartos com herança
// Crie três classes que representam três tipos de quartos em um hotel:
//  quarto simples, quarto médio e quarto luxo. Todos os quartos têm em 
//  comum as seguintes características:

// Tipo de quarto: indica se o quarto é simples, médio ou luxo;
// Valor da diária: registra a diária do tipo do quarto. Por exemplo,
// a diária do quarto simples é 80 reais; a do quarto médio é 250 reais;
// a do quarto luxo é 1000 reais. Repare que todos possuem a característica
// valorDiaria em comum, que é reaproveitada nos três tipos de quarto;
// Número de diárias: o número de diárias reservadas por um(a) hóspede;
// Método de reservar: realiza a ação de reservar um quarto.
// Vamos lá?

// 5. Adicionando diferenças com polimorfismo
// Agora que você criou as três classes de quartos,
// adicione as diferenças que existem entre elas:

// Café da manhã: apenas os quartos médio e luxo possuem esta comodidade.
// Implemente essa característica com método que contém um print como
//  “Servindo café da manhã no quarto do $tipo”;Serviço de quarto: 
//  exclusivo do quarto luxo. Crie um método print do serviço de quarto, como "Limpando o quarto $tipo."
// Vamos lá?

// 6. Criando um método de cálculo de diárias
// Agora, cada tipo de quarto deve calcular o valor total da reserva com 
// base em tarifas específicas. Você precisa ajustar as classes para lidar com essas tarifas.

// Adicione um método calcularValorTotal nas classes Quarto, QuartoMedio e QuartoLuxo.
//  O método deve calcular o valor total da reserva com base em uma tarifa diária
//   específica para cada tipo de quarto. Na main, crie exemplos de reservas para os três tipos de quarto e mostre o valor total calculado.