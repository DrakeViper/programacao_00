class Lampada {
  bool ligada;
  int quantidadeLigacoes;
  bool queimada;

  Lampada()
      : ligada = false,
        quantidadeLigacoes = 0,
        queimada = false;

  void ligar() {
    if (queimada) {
      print('A lâmpada está queimada e não pode ser ligada!');
    } else if (ligada) {
      print('A lâmpada já está ligada.');
    } else {
      ligada = true;
      quantidadeLigacoes++;
      print('Lâmpada ligada. (Total de ligações: $quantidadeLigacoes)');

      if (quantidadeLigacoes >= 5) {
        queimada = true;
        ligada = false;
        print('A lâmpada queimou após $quantidadeLigacoes ligações!');
      }
    }
  }

  void desligar() {
    if (queimada) {
      print('A lâmpada está queimada.');
    } else if (!ligada) {
      print('A lâmpada já está desligada.');
    } else {
      ligada = false;
      print('Lâmpada desligada.');
    }
  }

  void exibirEstado() {
    if (queimada) {
      print('Estado: QUEIMADA');
    } else if (ligada) {
      print('Estado: LIGADA');
    } else {
      print('Estado: DESLIGADA');
    }
    print('Quantidade de ligações: $quantidadeLigacoes');
    print('-------------------');
  }
}