void main() {
  Conta conta1 = Conta("Banco do Brasil", "Corrente", 12345, "Alyce Silva", 500.00);

  conta1.dados();
  conta1.depositar(250.00);
  conta1.sacar(100.00);
  conta1.dados();
}

class Banco {
  String nome;
  Banco(this.nome);
}

class Conta extends Banco {
  String tipo;
  int numero;
  String nomeCliente;
  double saldo;

  Conta(String nomeBanco, this.tipo, this.numero, this.nomeCliente, this.saldo): super(nomeBanco);

  void dados() {
    print("=== Dados da Conta ===");
    print("Banco: $nome");
    print("Tipo de conta: $tipo");
    print("Número da conta: $numero");
    print("Nome do cliente: $nomeCliente");
    print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
    print("=======================\n");
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= saldo) {
      saldo -= valor;
      print("Saque de R\$${valor.toStringAsFixed(2)} realizado com sucesso!\n");
    } else {
      print("Saldo insuficiente para saque de R\$${valor.toStringAsFixed(2)}");
    }
  }

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      print("Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso!\n");
    } else {
      print("Valor de depósito inválido!");
    }
  }
}

