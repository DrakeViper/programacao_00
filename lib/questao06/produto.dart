class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  int quantidade;

  Produto(int codigo, String nome, double precoUnitario, int quantidade)
      : codigo = codigo,
        nome = nome,
        precoUnitario = precoUnitario,
        quantidade = quantidade {
    if (codigo <= 0) {
      print('Erro: código deve ser maior que 0!');
    }
    if (nome.isEmpty) {
      print('Erro: nome não pode ser vazio!');
    }
    if (precoUnitario <= 0) {
      print('Erro: preço unitário deve ser maior que 0!');
    }
    if (quantidade <= 0) {
      print('Erro: quantidade deve ser maior que 0!');
    }
  }

  double calcularDesconto() {
    double percentual = 0;

    if (quantidade >= 20) {
      percentual = 0.15;
    } else if (quantidade >= 10) {
      percentual = 0.10;
    } else if (quantidade >= 5) {
      percentual = 0.05;
    }

    return precoUnitario * quantidade * percentual;
  }

  double calcularTotal() {
    return (precoUnitario * quantidade) - calcularDesconto();
  }

  void exibirResumo() {
    print('Código: $codigo');
    print('Nome: $nome');
    print('Preço unitário: R\$ ${precoUnitario.toStringAsFixed(2)}');
    print('Quantidade: $quantidade');
    print('Desconto: R\$ ${calcularDesconto().toStringAsFixed(2)}');
    print('Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
    print('-------------------');
  }
}