class Cliente{
  String nome;
  List <String> reservas;

 Cliente(this.nome,this.reservas);

void reservarQuarto(String quarto){
  if(reservas.contains(quarto)){
    print("Quarto ja reservado");
  }else{
   reservas.add(quarto);
   _imprimirReservas();
  }

}

void cancelarReserva(String quarto){
   if(reservas.contains(quarto)){
    reservas.remove(quarto);
    _imprimirReservas();
   }else{
    print("Quarto não encontrado");
   }
}

void _imprimirReservas(){
  print(reservas);
}

}