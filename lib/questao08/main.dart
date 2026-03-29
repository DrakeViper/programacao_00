import 'endereco.dart';

void main() {
  Endereco end1 = Endereco('Rua das Flores', 100, 'Centro', 'Curitiba', 'PR', 80010000);
  Endereco end2 = Endereco('Avenida Paulista', 1500, 'Bela Vista', 'São Paulo', 'SP', 01310100);
  Endereco end3 = Endereco('Rua do Comércio', 45, 'Boa Viagem', 'Recife', 'PE', 51020010);

  print('=== Endereço 1 ===');
  end1.exibirEndereco();

  print('\n=== Endereço 2 ===');
  end2.exibirEndereco();

  print('\n=== Endereço 3 ===');
  end3.exibirEndereco();
}