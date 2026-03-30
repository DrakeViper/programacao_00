class Pessoa {
  String nome;
  int idade;

  Pessoa(String nome, int idade)
      : nome = nome,
        idade = idade {
    if (nome.isEmpty) {
      print('Erro: nome não pode ser vazio!');
    }
    if (idade < 0) {
      print('Erro: idade deve ser maior ou igual a 0!');
    }
  }

  void exibirDados() {
    print('Nome: $nome');
    print('Idade: $idade anos');
    print('-------------------');
  }
}