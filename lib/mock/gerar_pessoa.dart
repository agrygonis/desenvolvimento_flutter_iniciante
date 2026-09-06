import 'package:faker/faker.dart';

import '../models/pessoa.dart';

// Retorna uma lista contendo a quantidade solicitada de Pessoa
List<Pessoa> gerarPessoas(int quantidade) {
  final faker = Faker();

  // o List.generatior cria um loop automático que roda "quantidade" de vezes
  return List.generate(quantidade, (index) {
    return Pessoa(
      id: index,
      nome: faker.person.name(),
      altura: faker.randomGenerator.integer(
        200,
        min: 150,
      ), // Altura entre 1.50 e 2.00 metros
      peso: faker.randomGenerator.decimal(
        scale: 50,
        min: 50,
      ), // Peso entre 50 e 100 kg
    );
  });
}
