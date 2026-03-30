class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp) {
    if (tipo.isEmpty) throw Exception("Tipo não pode ser vazio");
    if (nivel < 1 || nivel > 100) throw Exception("Nível deve estar entre 1 e 100");
    if (hp <= 0) throw Exception("HP deve ser maior que 0");
  }

  void exibir() {
    print("  #$numero $nome | Tipo: $tipo | Nível: $nivel | HP: $hp");
  }
}

class Treinador {
  String nome;
  Pokemon pokemon1;
  Pokemon pokemon2;
  Pokemon pokemon3;

  Treinador(this.nome, this.pokemon1, this.pokemon2, this.pokemon3) {
    if (nome.isEmpty) throw Exception("Nome do treinador não pode ser vazio");
  }

  void exibirTime() {
    print("=== Treinador: $nome ===");
    print("Time Pokémon:");
    pokemon1.exibir();
    pokemon2.exibir();
    pokemon3.exibir();
  }

  int calcularPoderTotal() {
    return pokemon1.nivel + pokemon2.nivel + pokemon3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon mais_forte = pokemon1;
    if (pokemon2.nivel > mais_forte.nivel) mais_forte = pokemon2;
    if (pokemon3.nivel > mais_forte.nivel) mais_forte = pokemon3;
    print("Pokémon mais forte: ${mais_forte.nome} (Nível ${mais_forte.nivel})");
  }
}