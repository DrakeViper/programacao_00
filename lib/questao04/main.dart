import 'lampada.dart';

void main() {
  Lampada lampada = Lampada();

  lampada.exibirEstado();

  lampada.ligar();
  lampada.exibirEstado();

  lampada.desligar();
  lampada.exibirEstado();

  lampada.ligar();
  lampada.desligar();
  lampada.ligar();
  lampada.desligar();
  lampada.ligar(); // 5ª ligação — queima aqui
  lampada.exibirEstado();

  lampada.ligar(); // tentativa após queimada
}