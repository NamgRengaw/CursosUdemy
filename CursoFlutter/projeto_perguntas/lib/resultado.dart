import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int _pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(this._pontuacao, this.reiniciarQuestionario, {super.key});

  String get fraseResultado {
    if (_pontuacao == 6) {
      return 'Acertou tudo eim!';
    } else if (_pontuacao == 5) {
      return 'Só errou um!';
    } else if(_pontuacao < 5 && _pontuacao > 1) {
      return 'Estude mais para a próxima';
    } else if (_pontuacao == 1) {
      return 'Ta ruim eim? Só acertou uma!';
    } else {
      return 'Puts... Não acertou nada...';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: reiniciarQuestionario,
          child: Text(
            "Voltar ao Inicio",
            style: const TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
