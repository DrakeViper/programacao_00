class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo) {
    if (potencia <= 0) throw ArgumentError('Potência deve ser maior que 0.');
    if (tipo.isEmpty) throw ArgumentError('Tipo não pode ser vazio.');
  }

  void exibirMotor() {
    print('Motor: $tipo');
    print('Potência: ${potencia}cv');
  }
}

class Carro {
  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor) {
    if (modelo.isEmpty) throw ArgumentError('Modelo não pode ser vazio.');
  }

  void exibirCarro() {
    print('Modelo: $modelo');
    motor.exibirMotor();
  }
}