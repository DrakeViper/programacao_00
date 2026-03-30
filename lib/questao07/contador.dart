class Contador {
  int valor;

  Contador(int valorInicial) : valor = valorInicial {
    if (valorInicial < 0) {
      print('Erro: valor inicial deve ser maior ou igual a 0!');
      valor = 0;
    }
  }

  void incrementar() {
    valor++;
    print('Incrementou → valor: $valor');
  }

  void decrementar() {
    if (valor == 0) {
      print('Valor já é 0, não pode ficar negativo.');
    } else {
      valor--;
      print('Decrementou → valor: $valor');
    }
  }

  void zerar() {
    valor = 0;
    print('Contador zerado.');
  }

  void exibirValor() {
    print('Valor atual: $valor');
    print('-------------------');
  }
}