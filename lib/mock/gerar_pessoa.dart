import 'dart:math';

import 'package:faker/faker.dart';

import '../models/pessoa.dart';

//Funcão que retorna uma lista de pessoas geradas aleatoriamente
List<Pessoa> gerarPessoas(int quantidade) {
  final faker = Faker();
  final random = Random();

  return List.generate(quantidade, (index) {
    return Pessoa(
      id: index,
      nome: faker.person.name(),
      altura: random.nextInt(51) + 150, // Altura entre 150 e 200 cm
      peso: faker.randomGenerator.decimal(
        scale: 50,
        min: 50,
      ), // Peso entre 50 e 100 kg
    );
  });
}
