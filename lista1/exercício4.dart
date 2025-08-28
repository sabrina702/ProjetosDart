import 'dart:io';
void main(){
  // ---------- MENU ----------
  print("===== Lanchonete XYZ =====");
  print("\nSalgados:");
  print("101 - Coxinha    (R\$ 4.50)");
  print("102 - Joelho     (R\$ 5.50)");
  print("103 - Pizza      (R\$ 6.00)");

  print("\nBebidas:");
  print("201 - Água        (R\$ 3.00)");
  print("202 - Refrigerante (R\$ 4.50)");
  print("203 - Suco        (R\$ 5.50)\n");

  // ---------- ESCOLHA DO SALGADO ----------
  stdout.write("Digite o código do salgado: ");
  int codSalgado = int.parse(stdin.readLineSync()!);
  stdout.write("Quantidade de salgados: ");
  int qtdSalgado = int.parse(stdin.readLineSync()!);

  // ---------- ESCOLHA DA BEBIDA ----------
  stdout.write("Digite o código da bebida: ");
  int codBebida = int.parse(stdin.readLineSync()!);
  stdout.write("Quantidade de bebidas: ");
  int qtdBebida = int.parse(stdin.readLineSync()!);

  // ---------- PREÇOS E NOMES ----------
  String nomeSalgado = "";
  double precoSalgado = 0;
  if (codSalgado == 101) { 
    nomeSalgado = "Coxinha"; precoSalgado = 4.50; 
    }else if (codSalgado == 102) { 
      nomeSalgado = "Joelho"; precoSalgado = 5.50; 
      }else if (codSalgado == 103) {
        nomeSalgado = "Pizza"; precoSalgado = 6.00; 
        }else { 
          print("Código de salgado inválido!"); 
          return; 
          }

  String nomeBebida = "";
  double precoBebida = 0;
  if (codBebida == 201) { 
    nomeBebida = "Água"; precoBebida = 3.00; 
    }else if (codBebida == 202) {
      nomeBebida = "Refrigerante"; precoBebida = 4.50; 
       }else if (codBebida == 203) {
        nomeBebida = "Suco"; precoBebida = 5.50; 
        }else { 
          print("Código de bebida inválido!"); 
          return; 
          }

  // ---------- CÁLCULO ----------
  double totalSalgado = precoSalgado * qtdSalgado;
  double totalBebida = precoBebida * qtdBebida;
  double total = totalSalgado + totalBebida;

  // ---------- DESCONTO ----------
  bool descontoAplicado = false;
  if (total > 100.00) {
    total *= 0.90; 
    descontoAplicado = true;
  }

  // ---------- RESUMO ----------
  print("\n===== RESUMO DO PEDIDO =====");
  print("$qtdSalgado x $nomeSalgado (R\$ ${precoSalgado.toStringAsFixed(2)} cada) → R\$ ${totalSalgado.toStringAsFixed(2)}");
  print("$qtdBebida x $nomeBebida (R\$ ${precoBebida.toStringAsFixed(2)} cada) → R\$ ${totalBebida.toStringAsFixed(2)}");

  if (descontoAplicado) {
    print("\nPedido acima de R\$ 100,00 → Desconto de 10% aplicado!");
  }

  print("\nValor total a pagar: R\$ ${total.toStringAsFixed(2)}");
}