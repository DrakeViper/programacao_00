import 'produto.dart';

void main() {
  Produto produto = Produto(1, 'Caderno', 15.90, 3);
  produto.exibirResumo();

  // Substitui os atributos e exibe novamente
  produto.codigo = 2;
  produto.nome = 'Mochila';
  produto.precoUnitario = 89.90;
  produto.quantidade = 12;
  produto.exibirResumo();
}