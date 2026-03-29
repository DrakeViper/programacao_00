import 'cofrinho.dart';

void main() {
  Cofrinho cofrinho = Cofrinho(0);

  print('=== Cofrinho criado ===');
  cofrinho.exibirSaldo();

  print('\n=== Fazendo depósitos ===');
  cofrinho.depositar(10.00);
  cofrinho.depositar(25.50);
  cofrinho.depositar(5.00);
  cofrinho.depositar(50.00);
  cofrinho.depositar(8.75);

  print('\n=== Saldo antes de quebrar ===');
  cofrinho.exibirSaldo();

  cofrinho.quebrar();

  print('\n=== Saldo após quebrar ===');
  cofrinho.exibirSaldo();
}