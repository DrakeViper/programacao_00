class Data {
  int dia;
  int mes;
  int ano;

  Data(int dia, int mes, int ano)
      : dia = dia,
        mes = mes,
        ano = ano {
    if (dia < 1 || dia > 31) {
      print('Erro: dia deve estar entre 1 e 31!');
    }
    if (mes < 1 || mes > 12) {
      print('Erro: mês deve estar entre 1 e 12!');
    }
    if (ano <= 0) {
      print('Erro: ano deve ser maior que 0!');
    }
  }

  void exibirData() {
    String d = dia.toString().padLeft(2, '0');
    String m = mes.toString().padLeft(2, '0');
    String a = ano.toString().padLeft(4, '0');
    print('Data: $d/$m/$a');
    print('-------------------');
  }
}