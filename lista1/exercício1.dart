import 'dart:io';

void main(){
  //exercicío 1
  print("Informe um Número Inteiro");
  int valor1 = int.parse(stdin.readLineSync()!);
  print("Número Inteiro: ${valor1}");

  print("Informe um Número Real");
  double valor2 = double.parse(stdin.readLineSync()!);
  print("Número Real: ${valor2}");
  
}