import 'contador.dart';

void main() {
  print('=== Contador 1 (início em 0) ===');
  Contador c1 = Contador(0);
  c1.exibirValor();
  c1.incrementar();
  c1.incrementar();
  c1.incrementar();
  c1.exibirValor();
  c1.decrementar();
  c1.exibirValor();
  c1.decrementar();
  c1.decrementar(); // já está em 0, permanece em 0
  c1.exibirValor();

  print('=== Contador 2 (início em 5) ===');
  Contador c2 = Contador(5);
  c2.exibirValor();
  c2.incrementar();
  c2.incrementar();
  c2.exibirValor();
  c2.zerar();
  c2.exibirValor();
  c2.decrementar(); // já está em 0
  c2.exibirValor();
}