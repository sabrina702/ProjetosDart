import 'dart:io';

void main() {
  print("Informe o salário: ");
  double salario = double.parse(stdin.readLineSync()!);

  double aumento = salario * 0.15; 
  salario = salario + aumento; 

  print("O salário com aumento de 15% é: R\$ ${salario.toStringAsFixed(2)}");
}