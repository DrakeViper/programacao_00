import 'relogio.dart';

void main() {
  Relogio r1 = Relogio(8, 30, 0);
  Relogio r2 = Relogio(14, 5, 45);
  Relogio r3 = Relogio(23, 59, 59);

  r1.exibirHorario();
  r2.exibirHorario();
  r3.exibirHorario();
}