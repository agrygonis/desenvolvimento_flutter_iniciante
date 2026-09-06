import 'package:flutter/material.dart';

import '../models/pessoa.dart';
import '../extensions/format_extensions.dart';

class CustomPessoaTile extends StatelessWidget {
  final Pessoa pessoa;
  final Color corFundo;
  final VoidCallback onTap; // Recebendo o clique como parâmetro

  const CustomPessoaTile({
    super.key,
    required this.pessoa,
    required this.corFundo,
    required this.onTap, // Parâmetro Obrigatório
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector ou InkWell "ouvem" o toque do usuário
    return InkWell(
      onTap: onTap,
      // 1. Container subistitui o card para controle toral de design
      child: Container(
        // Margin afasta este card dos outros intens da lista
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        // PAdding afasta os textos das bordas do card
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: corFundo,
          borderRadius: BorderRadius.circular(8.0),
        ),
        // 2. Row principal que joga o bloco 1 para esquerda e o bloco 2 para direita
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 3. Bloco 1 (Esquerda): ID, Nome e Peso
            Row(
              children: [
                Text(
                  'ID: ${pessoa.id}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 16), // Espaçamento horizontal (Gap)
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha o texto à esquerda
                  children: [
                    Text(
                      pessoa.nome,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4), // Espaçamento vertical
                    Text('Peso: ${pessoa.peso.toStringAsFixed(1)} kg'),
                  ],
                ),
              ],
            ),
            // 4. Bloco 2 (Direita): Altura
            Text('${pessoa.altura} cm', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
