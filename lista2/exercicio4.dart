void main() {
  Conta conta1 = Conta(12345, 1000.0, 500.0);

  conta1.imprimeExtrato();
  conta1.deposita(200.0);
  conta1.saca(300.0);
  conta1.imprimeExtrato();
}

class Conta {
  int numero;
  double saldo;
  double limite;

  Conta(this.numero, this.saldo, this.limite);

  void saca(double valor) {
    if (valor <= saldo + limite) {
      saldo -= valor;
      print("Saque de R\$${valor.toStringAsFixed(2)} realizado com sucesso!\n");
    } else {
      print("Saldo insuficiente para saque de R\$${valor.toStringAsFixed(2)}");
    }
  }

  void deposita(double valor) {
    saldo += valor;
    print("Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso!\n");
  }

  void imprimeExtrato() {
    print("=== Extrato da Conta ===");
    print("Número da conta: $numero");
    print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
    print("Limite disponível: R\$${limite.toStringAsFixed(2)}");
    print("=======================\n");
  }
}
