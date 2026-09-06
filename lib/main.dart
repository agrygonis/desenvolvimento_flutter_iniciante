import 'package:flutter/material.dart';

import 'mock/gerar_pessoa.dart';
import 'widgets/pessoal_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Pessoas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3:
            false, // Desativar o Material 3 para manter o estilo antigo
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Lista Performática')),
        body: const ListaPessoas(),
      ),
    );
  }
}

class ListaPessoas extends StatelessWidget {
  const ListaPessoas({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Gerar os dados antres de desenhar a tela
    final pessoas = gerarPessoas(20); // Gera 20 pessoas aleatórias

    // 2. Retorna a lista construtora performática
    return ListView.builder(
      itemCount: pessoas.length, // Diz quantas vezes a lista vai rodar
      itemBuilder: (context, index) {
        // Para cada item da lista ( de 0 a 19), constrói um Card na tela
        return PessoaTile(pessoa: pessoas[index]);
      },
    );
  }
}
