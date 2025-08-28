import 'dart:io';
void main() {
  print("Informe o Ano do Carro: ");
  double ano = double.parse(stdin.readLineSync()!);

  print("\nInforme o valor do Carro: ");
  double valor = double.parse(stdin.readLineSync()!);
  
  double taxa = 0;
  if(ano < 2000){
    taxa = 0.01;
    valor = valor * taxa;
    print("Imposto a pagar: R\$ ${valor.toStringAsFixed(2)}");
  }else{
    taxa = 0.015;
    valor = valor * taxa;
    print("Imposto a pagar: R\$ ${valor.toStringAsFixed(2)}");
  }
}