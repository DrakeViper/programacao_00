import 'cofrinho.dart';

void main() {
  Cofrinho meuCofrinho = Cofrinho(0, 0);

  meuCofrinho.depositar(10.50);
  meuCofrinho.depositar(25.00);
  meuCofrinho.depositar(5.75);
  meuCofrinho.depositar(100.00);
  meuCofrinho.depositar(-10); // teste com valor inválido

  meuCofrinho.exibirSaldo();
  meuCofrinho.quebrar();
  meuCofrinho.exibirSaldo();
}