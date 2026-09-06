import 'package:flutter/material.dart';

import '../models/pessoa.dart';
import '../extensions/format_extensions.dart';

class PessoaDialog extends StatelessWidget {
  final Pessoa pessoa;

  const PessoaDialog({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Detalhes do Cliente'),
      // IntrinsicWidth evita que a coluna do AlertDialog preencha a tela toda sem necessidade
      content: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${pessoa.id}'),
            const SizedBox(height: 8), // Espaçamento vertical
            Text('Nome: ${pessoa.nome}'),
            const SizedBox(height: 8), // Espaçamento vertical
            // Olhe aqui nossas extensions em ação aqui!
            Text('Peso: ${pessoa.peso.paraPeso} kg'),
            const SizedBox(height: 8), // Espaçamento vertical
            Text('Altura: ${pessoa.altura} cm'),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () =>
              Navigator.pop(context), // O Comando que fecha a telinha
          child: const Text('Fechar'),
        ),
      ],
    );
  }
}
