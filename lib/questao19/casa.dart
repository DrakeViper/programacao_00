class Comodo {
  String nome;
  double tamanho;

  Comodo(this.nome, this.tamanho) {
    if (tamanho <= 0) throw Exception("Tamanho deve ser maior que 0");
  }

  void exibir() {
    print("  🚪 $nome - ${tamanho.toStringAsFixed(1)} m²");
  }
}

class Casa {
  String proprietario;
  Comodo comodo1;
  Comodo comodo2;
  Comodo comodo3;

  Casa(this.proprietario, this.comodo1, this.comodo2, this.comodo3) {
    if (proprietario.isEmpty) throw Exception("Proprietário não pode ser vazio");
  }

  void exibirCasa() {
    print("=== Casa de $proprietario ===");
    comodo1.exibir();
    comodo2.exibir();
    comodo3.exibir();
    print("Área total: ${calcularAreaTotal().toStringAsFixed(1)} m²");
  }

  double calcularAreaTotal() {
    return comodo1.tamanho + comodo2.tamanho + comodo3.tamanho;
  }
}