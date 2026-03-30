class Cofrinho {
  double saldo;
  int quantidadeDepositos;

  Cofrinho(this.saldo, this.quantidadeDepositos) {
    if (saldo < 0) {
      saldo = 0;
    }
    quantidadeDepositos = 0;
  }

  void depositar(double valor) {
    if (valor <= 0) {
      print("Valor inválido para depósito.");
      return;
    }
    saldo += valor;
    quantidadeDepositos++;
    print("Depositado: R\$ ${valor.toStringAsFixed(2)}");
  }

  void quebrar() {
    print("--- Quebrando o cofrinho! ---");
    print("Total acumulado: R\$ ${saldo.toStringAsFixed(2)}");
    print("Total de depósitos feitos: $quantidadeDepositos");
    saldo = 0;
    quantidadeDepositos = 0;
    print("Cofrinho zerado!");
  }

  void exibirSaldo() {
    print("Saldo atual: R\$ ${saldo.toStringAsFixed(2)}");
  }
}