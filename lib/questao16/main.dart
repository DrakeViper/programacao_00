import 'personagem.dart';

void main() {
  Personagem guerreiro = Personagem("Guerreiro", 100, 15);
  Personagem mago = Personagem("Mago", 70, 25);

  print("=== Início do combate ===");
  guerreiro.exibirStatus();
  mago.exibirStatus();
  print("");

  int rodada = 1;
  while (guerreiro.estaVivo() && mago.estaVivo()) {
    print("-- Rodada $rodada --");
    guerreiro.atacar(mago);
    if (mago.estaVivo()) {
      mago.atacar(guerreiro);
    }
    guerreiro.exibirStatus();
    mago.exibirStatus();
    print("");
    rodada++;
  }

  print("=== Fim do combate ===");
  if (guerreiro.estaVivo()) {
    print("${guerreiro.nome} venceu!");
  } else {
    print("${mago.nome} venceu!");
  }
}