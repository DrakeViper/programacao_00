class Cofrinho {
  double saldo;
  int quantidadeDepositos;

  Cofrinho(this.saldo) {
    quantidadeDepositos = 0;
    if (saldo < 0) throw ArgumentError('Saldo inicial deve ser maior ou igual a 0.');
  }

  void depositar(double valor) {
    if (valor <= 0) throw ArgumentError('O valor do depósito deve ser maior que 0.');
    saldo += valor;
    quantidadeDepositos++;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado. Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
  }

  void exibirSaldo() {
    print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)} | Depósitos realizados: $quantidadeDepositos');
  }

  void quebrar() {
    print('\nQuebrando o cofrinho...');
    print('Total acumulado: R\$ ${saldo.toStringAsFixed(2)}');
    print('Total de depósitos: $quantidadeDepositos');
    saldo = 0;
    quantidadeDepositos = 0;
    print('Cofrinho zerado!');
  }
}