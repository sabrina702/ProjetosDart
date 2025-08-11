import 'dart:io';

void main(){
  // declaração de variável fortemente tipada
  String curso = "Sistemas de Informação";
  print(curso);
  //int idade = 34;
  //print(idade);            

  String meuNome = "Sabrina";
  print("Nome: $meuNome");

  // declaração de variável fracamente tipada
  var valor1, valor2;
  valor1 = 2.50;
  valor2 = 5.50;

  //tudo é tratado como objeto, então podemos acessar métodos a partir da variável 
  print(valor1);
  print(valor2.round());
  print(curso.length);     

  String numCelular = "(35) 9 9775-7483";
  String ?numResidencial; // quando uma valor possivelmente pode ser nulo 
  print("Número Celular: $numCelular");
  //print("Número Residencial: $numResidencial");
  print(numResidencial ?? 'Número de telefone não informado');//vereifica se o valor é nulo 

  print("Informe sua idade: ");
  String idade = stdin.readLineSync()!;//recebendo texto
  print("Sua Idade é: $idade");
  print("Sua idade no próximo ano: ${int.tryParse(idade)! + 1 }");//formatando para int

  const double pi = 3.14; // gera o erro na hora de codificar
  // pi = pi * 2;
  final double aux = 3.15; // gera o erro na copilação 
}