import 'circulo.dart';

void main() {
  Circulo c1 = Circulo(5, 'Vermelho');
  Circulo c2 = Circulo(3.5, 'Azul');
  Circulo c3 = Circulo(10, 'Verde');

  print('=== Círculo 1 ===');
  c1.exibirResumo();

  print('\n=== Círculo 2 ===');
  c2.exibirResumo();

  print('\n=== Círculo 3 ===');
  c3.exibirResumo();
}