import 'dart:io';

void main() {
  stdout.write("Digite um número real: ");
  double numero = double.parse(stdin.readLineSync()!);

  double quintaParte = numero / 5;

  print("A quinta parte de $numero é $quintaParte");
}
