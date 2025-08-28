import 'dart:io';
void main() {
  print("Informe o Salário: ");
  double salario = double.parse(stdin.readLineSync()!);

  print("\nInforme o Cargo: ");
  double cargo = double.parse(stdin.readLineSync()!);
  
  double aumento = 0;
  double novosalario = 0;
  double diferenca = 0;
  if(cargo == "Gerente"){
    aumento = salario * 0.1;
    novosalario = salario + aumento;
    diferenca = novosalario - salario;
  }else if(cargo == "Engenheiro"){
    aumento = salario * 0.2;
    novosalario = salario + aumento;
    diferenca = novosalario - salario;
  }else if(cargo == "Técnico"){
    aumento = salario * 0.3;
    novosalario = salario + aumento;
    diferenca = novosalario - salario;
  }else{
    aumento = salario * 0.4;
    novosalario = salario + aumento;
    diferenca = novosalario - salario;
  }

  print("Salário Inicial: R\$ ${salario}");
  print("Novo Salário: R\$ ${novosalario}");
  print("Aumento (Diferença): R\$ ${diferenca}");
}