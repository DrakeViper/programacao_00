import 'produto.dart';

class Pedido {
  int numero;
  Produto produto;
  int quantidade;

  Pedido(this.numero, this.produto, this.quantidade) {
    if (numero <= 0) throw ArgumentError('Número do pedido deve ser maior que 0.');
    if (quantidade <= 0) throw ArgumentError('Quantidade deve ser maior que 0.');
  }

  double calcularTotal() => produto.preco * quantidade;

  void exibirPedido() {
    print('Pedido Nº: $numero');
    produto.exibirProduto();
    print('Quantidade: $quantidade');
    print('Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
  }
}