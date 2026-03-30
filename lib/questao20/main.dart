import 'pokemon.dart';

void main() {
  Pokemon pikachu = Pokemon(25, "Pikachu", "Elétrico", 36, 90);
  Pokemon charizard = Pokemon(6, "Charizard", "Fogo/Voador", 72, 150);
  Pokemon blastoise = Pokemon(9, "Blastoise", "Água", 65, 140);

  Treinador ash = Treinador("Ash Ketchum", pikachu, charizard, blastoise);

  ash.exibirTime();
  print("\nPoder total do time: ${ash.calcularPoderTotal()}");
  ash.pokemonMaisForte();
}