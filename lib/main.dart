import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Primeiro App Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3:
            false, // Desativar o Material 3 para manter o estilo antigo
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Meu Primeiro App')),
        body: Center(
          // Centraliza o nosso widget na tela
          child: MeuStatelessWidget(),
        ),
      ),
    );
  }
}

// Nota didática: O VS Code vai colocar um sublinhado amarelo no nome desta classe
// avisando "This class is marked as '@immutable', but one or more of its instance
// fields aren't final".
// Isso é o Flutter te avisando exatamente o que aprendemos: StatelessWidgets
// não deveriam ter variáveis que mudam de valor! (Deixamos assim de propósito para o teste).
class MeuStatelessWidget extends StatelessWidget {
  MeuStatelessWidget({
    super.key,
  }); // Removemos o const para poder ter variáveis mutáveis

  int count = 0; //nossa variavel mutável no lugar errado (ela deveria ser final, mas não é)

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $count',
              style: const TextStyle(fontSize: 24, color: Colors.blue),
            ),
          ],
        ),
        const SizedBox(height: 16), // O nosso "espaçador"
        ElevatedButton(
          onPressed: () {
            count++; //incrementa a variável
            print('Valor na memória: $count'); //imprime no console
          },
          child: const Text('Clique aqui'),
        ),
      ],
    );
  }
}
