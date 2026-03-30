import 'semaforo.dart';

void main() {
  Semaforo semaforo = Semaforo("🔴", 5);

  print("=== Simulação do Semáforo ===");

  for (int i = 0; i < 15; i++) {
    semaforo.exibirEstado();
    semaforo.reduzirTempo();
  }

  print("=== Fim da simulação ===");
  semaforo.exibirEstado();
}