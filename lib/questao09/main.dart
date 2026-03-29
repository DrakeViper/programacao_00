import 'pessoa.dart';
import 'endereco.dart';

void main() {
  Endereco end1 = Endereco('Rua das Flores', 100, 'Centro', 'Curitiba', 'PR', 80010000);
  Endereco end2 = Endereco('Avenida Paulista', 1500, 'Bela Vista', 'São Paulo', 'SP', 01310100);
  Endereco end3 = Endereco('Rua do Comércio', 45, 'Boa Viagem', 'Recife', 'PE', 51020010);

  Pessoa p1 = Pessoa('Ana Silva', 28, '123.456.789-00', end1);
  Pessoa p2 = Pessoa('Carlos Souza', 35, '987.654.321-00', end2);
  Pessoa p3 = Pessoa('Marina Lima', 22, '111.222.333-44', end3);

  print('=== Pessoa 1 ===');
  p1.exibirPessoa();

  print('\n=== Pessoa 2 ===');
  p2.exibirPessoa();

  print('\n=== Pessoa 3 ===');
  p3.exibirPessoa();
}