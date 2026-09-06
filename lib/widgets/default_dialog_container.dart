import 'package:flutter/material.dart';

class DefaultDialogContainer extends StatelessWidget {
  // A propriedade 'child'receberá o Widget (como um Text) que ficará aqui dentro
  final Widget child;

  const DefaultDialogContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8), // Um leve espaçamento embaixo
      padding: const EdgeInsets.all(8), // Espaço interno
      width: double.infinity, // Força a caixa a esticar até o limite lateral
      decoration: BoxDecoration(
        color: Colors.blueAccent, // Fundo Azul claro transparente
        borderRadius: BorderRadius.circular(8),
      ),
      child: child, // Renderiza o que quer que tenhamos passado por parâmetro
    );
  }
}
