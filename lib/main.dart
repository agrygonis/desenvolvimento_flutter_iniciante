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
class MeuStatelessWidget extends StatefulWidget {
  const MeuStatelessWidget({super.key});
  @override
  State<MeuStatelessWidget> createState() => _MeuStatelessWidgetState();
}

class _MeuStatelessWidgetState extends State<MeuStatelessWidget> {
  int count = 0;

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
            setState(() {
              count++; //incrementa a variável
            });
          },
          child: const Text('Clique aqui'),
        ),
        const SizedBox(height: 16), // O nosso "espaçador"
        BotaoDeBaixo(
          acao: () {
            setState(() {
              count++; //incrementa a variável em 10
            });
          },
        ),
      ],
    );
  }
}

class BotaoDeBaixo extends StatefulWidget {
  final VoidCallback acao; // O Callback! Uma função vazia passada por paramétro
  const BotaoDeBaixo({super.key, required this.acao});

  @override
  State<BotaoDeBaixo> createState() => _BotaoDeBaixoState();
}

//Classe de estado do botão inferior
class _BotaoDeBaixoState extends State<BotaoDeBaixo> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.acao(); // Aqui chamamos a função que foi passada por parâmetro
      },
      child: const Text('Clicou no botão de baixo'),
    );
  }
}
