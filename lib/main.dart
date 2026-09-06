import 'package:flutter/material.dart';

import 'mock/gerar_pessoa.dart';
import 'widgets/custom_pessoa_tile.dart';
import 'widgets/pessoa_dialog.dart';

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
        appBar: AppBar(title: const Text('Lista Customizada')),
        body: const ListaPessoas(),
      ),
    );
  }
}

// Widget dedicado exclusivamente para carregar a lista na tela
class ListaPessoas extends StatelessWidget {
  const ListaPessoas({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Geramos 20 pessoas falsas na memória
    final pessoas = gerarPessoas(20); // Gera 20 pessoas aleatórias

    // 2. ListView.builder cria a lista com alta performance (renderiza sob demanda)
    return ListView.builder(
      itemCount: pessoas.length, // Diz quantas vezes a lista vai rodar
      itemBuilder: (context, index) {
        return CustomPessoaTile(
          pessoa: pessoas[index], // PAssa a pessoa específica daquela linha
          // Uma cor azul clara e transparente
          corFundo: Colors.lightBlueAccent,
          onTap: () {
            // 3. Ao clicar no card, mostramos o dialog com os detalhes da pessoa
            showDialog(
              context: context, // O context é o mapa do Flutter para saber onde desenhar a tela
              builder: (context) {
                return PessoaDialog(pessoa: pessoas[index]);
              },
            );
          },
        );
      },
    );
  }
}
