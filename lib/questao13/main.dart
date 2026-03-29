import 'pedido.dart';
import 'produto.dart';

void main() {
  Produto prod1 = Produto('Teclado Mecânico', 299.90);
  Produto prod2 = Produto('Mouse Gamer', 149.50);

  Pedido ped1 = Pedido(1, prod1, 2);
  Pedido ped2 = Pedido(2, prod2, 3);

  print('=== Pedido 1 ===');
  ped1.exibirPedido();

  print('\n=== Pedido 2 ===');
  ped2.exibirPedido();
}