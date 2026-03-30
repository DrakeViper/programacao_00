class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(String nome, double nota1, double nota2)
      : nome = nome,
        nota1 = nota1,
        nota2 = nota2 {
    if (nota1 < 0 || nota1 > 10) {
      print('Erro: nota1 de $nome deve estar entre 0 e 10!');
    }
    if (nota2 < 0 || nota2 > 10) {
      print('Erro: nota2 de $nome deve estar entre 0 e 10!');
    }
  }

  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }

  String verificarAprovacao() {
    if (calcularMedia() >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  }

  void exibirBoletim() {
    print('Aluno: $nome');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Média: ${calcularMedia().toStringAsFixed(1)}');
    print('Situação: ${verificarAprovacao()}');
    print('-------------------');
  }
}