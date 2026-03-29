import 'carro.dart';

void main() {
  Motor motor1 = Motor(150, 'Flex 1.0');
  Motor motor2 = Motor(300, 'Turbo 2.0');

  Carro carro1 = Carro('Gol', motor1);
  Carro carro2 = Carro('Corolla', motor2);

  print('=== Carro 1 ===');
  carro1.exibirCarro();

  print('\n=== Carro 2 ===');
  carro2.exibirCarro();
}