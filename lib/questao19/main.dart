import 'casa.dart';

void main() {
  Comodo sala = Comodo("Sala", 25.0);
  Comodo quarto = Comodo("Quarto", 15.5);
  Comodo cozinha = Comodo("Cozinha", 12.0);

  Casa casa = Casa("João Silva", sala, quarto, cozinha);

  casa.exibirCasa();
}