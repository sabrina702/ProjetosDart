import 'dart:io';
void main() {
  print("Digite o preço do produto: ");
  double preco = double.parse(stdin.readLineSync()!);
  
  // Mostra opções de pagamento
  print("\nFormas de pagamento:");
  print("0 - À vista (25% de desconto)");
  print("1 - Cheque (30 dias) (20% de desconto)");
  print("2 - Cartão Crédito (2x) (10% de desconto)");
  print("3 - Cartão Crédito (3x) (5% de desconto)");
  print("Outro - Negociado com vendedor (Sem desconto)");

  // Lê a condição escolhida
  print("\nDigite o código da forma de pagamento: ");
  int codigo = int.parse(stdin.readLineSync()!);

  double desconto = 0;
  String condicao = "";

  if (codigo == 0) {
    desconto = 0.25;
    condicao = "À vista";
  } else if (codigo == 1) {
    desconto = 0.20;
    condicao = "Cheque (30 dias)";
  } else if (codigo == 2) {
    desconto = 0.10;
    condicao = "Cartão Crédito (2x)";
  } else if (codigo == 3) {
    desconto = 0.05;
    condicao = "Cartão Crédito (3x)";
  } else {
    desconto = 0.0;
    condicao = "Negociado com vendedor";
  }

  double valorFinal = preco - (preco * desconto);

  print("\n===== RESUMO DA COMPRA =====");
  print("Preço original: R\$ ${preco.toStringAsFixed(2)}");
  print("Condição de pagamento: $condicao");
  print("Desconto aplicado: ${ (desconto * 100).toStringAsFixed(0) }%");
  print("Valor final a pagar: R\$ ${valorFinal.toStringAsFixed(2)}");
}