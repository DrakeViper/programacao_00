class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco) {
    if (nome.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    if (preco <= 0) throw ArgumentError('Preço deve ser maior que 0.');
  }

  void exibirProduto() {
    print('Produto: $nome');
    print('Preço unitário: R\$ ${preco.toStringAsFixed(2)}');
  }
}