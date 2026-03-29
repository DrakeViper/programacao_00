class Circulo {
  double raio;
  String cor;

  static const double PI = 3.14;

  Circulo(this.raio, this.cor) {
    if (raio <= 0) throw ArgumentError('Raio deve ser maior que 0.');
    if (cor.isEmpty) throw ArgumentError('Cor não pode ser vazia.');
  }

  double calcularArea() => PI * raio * raio;

  double calcularPerimetro() => 2 * PI * raio;

  void exibirResumo() {
    print('Raio: $raio');
    print('Cor: $cor');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
  }
}