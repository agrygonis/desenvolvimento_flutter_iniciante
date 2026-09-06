import 'package:flutter/material.dart';

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
