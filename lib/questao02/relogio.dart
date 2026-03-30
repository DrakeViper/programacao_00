class Relogio {
  int hora;
  int minuto;
  int segundo;

  Relogio(int hora, int minuto, int segundo)
      : hora = hora,
        minuto = minuto,
        segundo = segundo {
    if (hora < 0 || hora > 23) {
      print('Erro: hora deve estar entre 0 e 23!');
    }
    if (minuto < 0 || minuto > 59) {
      print('Erro: minuto deve estar entre 0 e 59!');
    }
    if (segundo < 0 || segundo > 59) {
      print('Erro: segundo deve estar entre 0 e 59!');
    }
  }

  void exibirHorario() {
    String h = hora.toString().padLeft(2, '0');
    String m = minuto.toString().padLeft(2, '0');
    String s = segundo.toString().padLeft(2, '0');
    print('Horário: $h:$m:$s');
    print('-------------------');
  }
}