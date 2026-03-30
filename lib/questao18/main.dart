import 'playlist.dart';

void main() {
  Musica m1 = Musica("Bohemian Rhapsody", "Queen", 354);
  Musica m2 = Musica("Stairway to Heaven", "Led Zeppelin", 482);
  Musica m3 = Musica("Hotel California", "Eagles", 391);

  Playlist playlist = Playlist("Rock Clássico", m1, m2, m3);

  playlist.exibirPlaylist();
  playlist.tocarPlaylist();
}