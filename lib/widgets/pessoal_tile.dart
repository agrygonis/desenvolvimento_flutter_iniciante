import 'package:flutter/material.dart';

import '../models/pessoa.dart';

class PessoaTile extends StatefulWidget {
  final Pessoa pessoa;

  const PessoaTile({super.key, required this.pessoa});

  @override
  State<PessoaTile> createState() => _PessoaTileState();
}

class _PessoaTileState extends State<PessoaTile> {
  //Chamando quando o card entra na tela
  void initState() {
    super.initState();
    print('Iniciando pessoa: ${widget.pessoa.id}');
  }

  //Chamando quando o card sai da tela
  void dispose() {
    print('Removendo pessoa: ${widget.pessoa.id}');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[100],
      elevation: 4,
      child: ListTile(
        leading: Text('ID: ${widget.pessoa.id}'),
        title: Text(
          widget.pessoa.nome,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Peso: ${widget.pessoa.peso.toStringAsFixed(1)} kg'),
        trailing: Text('${widget.pessoa.altura} cm'),
      ),
    );
  }
}
