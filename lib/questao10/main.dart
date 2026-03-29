import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(3, '*');
  Quadrado q2 = Quadrado(5, '#');
  Quadrado q3 = Quadrado(4, '@');
  Quadrado q4 = Quadrado(4, '+');

  print('=== Quadrado 1 ===');
  q1.exibirResumo();
  q1.desenhar();

  print('\n=== Quadrado 2 ===');
  q2.exibirResumo();
  q2.desenhar();

  print('\n=== Quadrado 3 ===');
  q3.exibirResumo();
  q3.desenhar();

  print('\n=== Quadrado 4 ===');
  q4.exibirResumo();
  q4.desenhar();

  print('\n=== Comparações ===');
  print('Q1 e Q2 são iguais? ${q1.ehIgual(q2)}');
  print('Q3 e Q4 são iguais? ${q3.ehIgual(q4)}');
}