class Semaforo {
  String corAtual;
  int tempoRestante;

  Semaforo(this.corAtual, this.tempoRestante) {
    if (corAtual != "🔴" && corAtual != "🟢" && corAtual != "🟡") {
      corAtual = "🔴";
      tempoRestante = 5;
    }
  }

  void trocarCor() {
    if (corAtual == "🔴") {
      corAtual = "🟢";
      tempoRestante = 4;
    } else if (corAtual == "🟢") {
      corAtual = "🟡";
      tempoRestante = 2;
    } else if (corAtual == "🟡") {
      corAtual = "🔴";
      tempoRestante = 5;
    }
    print("Cor trocada para $corAtual!");
  }

  void reduzirTempo() {
    if (tempoRestante > 0) {
      tempoRestante--;
    }
    if (tempoRestante == 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print("Cor atual: $corAtual | Tempo restante: $tempoRestante");
  }
}