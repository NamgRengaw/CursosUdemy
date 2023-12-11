import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Define a cor de fundo do botão, se desejar
          textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.white, // Define a cor do texto do botão
          ),
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
