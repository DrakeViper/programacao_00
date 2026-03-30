class Musica {
  String titulo;
  String artista;
  int duracaoSegundos;

  Musica(this.titulo, this.artista, this.duracaoSegundos) {
    if (duracaoSegundos <= 0) throw Exception("Duração deve ser maior que 0");
  }

  String formatarDuracao() {
    int min = duracaoSegundos ~/ 60;
    int seg = duracaoSegundos % 60;
    return "${min}m ${seg}s";
  }

  void exibir() {
    print("  🎵 $titulo - $artista (${formatarDuracao()})");
  }
}

class Playlist {
  String nome;
  Musica musica1;
  Musica musica2;
  Musica musica3;

  Playlist(this.nome, this.musica1, this.musica2, this.musica3) {
    if (nome.isEmpty) throw Exception("Nome da playlist não pode ser vazio");
  }

  void exibirPlaylist() {
    print("=== Playlist: $nome ===");
    musica1.exibir();
    musica2.exibir();
    musica3.exibir();
    print("Duração total: ${_formatarTotal(calcularDuracaoTotal())}");
  }

  int calcularDuracaoTotal() {
    return musica1.duracaoSegundos + musica2.duracaoSegundos + musica3.duracaoSegundos;
  }

  String _formatarTotal(int segundos) {
    int min = segundos ~/ 60;
    int seg = segundos % 60;
    return "${min}m ${seg}s";
  }

  void tocarPlaylist() {
    print("\n▶ Tocando playlist: $nome");
    print("  ▶ Tocando: ${musica1.titulo} - ${musica1.artista}");
    print("  ▶ Tocando: ${musica2.titulo} - ${musica2.artista}");
    print("  ▶ Tocando: ${musica3.titulo} - ${musica3.artista}");
    print("  ✅ Playlist finalizada!");
  }
}