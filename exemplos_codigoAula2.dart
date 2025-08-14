import 'dart:io';

void main(){
  print("Digite um Valor: ");
  int valor1 = int.parse(stdin.readLineSync()!);
  print("Digite um Valor: ");
  int valor2 = int.parse(stdin.readLineSync()!);

//Exemplo de operadores aritméticos
  print("soma dos valores: ${valor1 + valor2}");
  print("divisão dos valores: ${valor1 / valor2}");
  print("resto da divisão dos valores: ${valor1 % valor2}");
  print("subtração dos valores: ${valor1 - valor2}");

//Exemplo de operadores relacionais
  print("Resultado: ${valor1 == valor2}");
  print("Resultado: ${valor1 >= valor2}");
  print("Resultado: ${valor1 != valor2}");

//Exemplo de operadores lógicos
print("Resultado: ${valor1 > valor2 && valor2 > 0}");
print("Resultado: ${valor1 < valor2 && valor2 > 0}");

//Exemplo de operadores ternários
String resultado = (valor1 > valor2) ? "Valor 1 é Maior" : "Valor 2 é Maior";
print("Resultado: $resultado");

//Exemplos de Comandos de decisão e repetição 
if(valor1 == 0){
  print("Valor 1 é zero");
}else if(valor1 > 0){
  print("Valor 1 é positivo");
}else{
  print("Valor 1 é negativo");
}

switch(valor2){
  case 0:
    print("Valor 2 é zero");
    break;
  case 1: 
    print("Valor 2 é um");
    break;
  default:
    print("Valor 2 é outro número");
}

while(valor1 > 0){
  print("Uso do While");
  print(valor1);
  valor1--;
}

do{
  print("Uso do Do While");
  print(valor2);
  valor2--;
}while (valor2 > 0);

for(int i = 0; i < 5; i++){
  print("Contador: $i");
}

//Exemplo de função
imprimir();
imprimirNome("Sabrina");
print(imprimirValor());
print(imprimirOutroValor(10, 20));

//Exemplo de uso de List
List notas = [5.5, 7.8, 9.0, 10, 6.7];
var vogais = [];
List <String> palavras = ["Sistemas", "Férias", "Hoje"];
List diversosValores = ["Texto" , 1.0 ,2 , "True"];

//Exemplo de como mostrar List
print(notas);

for(int j = 0; j < palavras.length; j++){
  print("Palavras: ${palavras[j]}");
}

for (var valores in diversosValores){
  print("Valor: $valores");
}

notas.forEach(print);

//Exemplo de como adcionar valor em uma List
vogais.add("A");
vogais.addAll(["E", "I", "U"]);
vogais.insert(3, "O");
print(vogais);
vogais.add("X");
vogais.add("W");
print(vogais);

//Exemplo de como remover valor de uma List
vogais.remove("X");
vogais.removeAt(5);
print(vogais);

//Exemplo ordenando valores
notas.sort();
print(notas);
print(notas.reversed);

//Exemplo tamanho da list
print(notas.length);

//Exemplo para verificar se o valor esta na list
print(notas.contains(10));
print(notas.first);
print(notas.last);

print(notas.isEmpty);
print(notas.isNotEmpty);
}

//Exemplod de função
void imprimir(){
  print("Função Imprimir Chamada");
}

void imprimirNome(String nome){
  print("Meu Nome é: $nome");
}

String imprimirValor(){
  return "Valor 10";
}

String imprimirOutroValor(int a , int b){
  return "Valor 1: $a, Valor 2: $b ";
}