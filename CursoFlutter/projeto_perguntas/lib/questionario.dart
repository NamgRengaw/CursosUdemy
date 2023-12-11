import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> _perguntas;
  final int _perguntaSelecionada;
  final void Function(int) _responder;

  const Questionario(
      this._perguntas, this._perguntaSelecionada, this._responder,
      {super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = _perguntas[_perguntaSelecionada]
        ['respostas'] as List<Map<String, Object>>;
    return Column(
      children: [
        Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resp) => Resposta(
                  resp['texto'].toString(),
                  () => _responder(
                    int.parse(resp['pontuacao'].toString()),
                  ),
                ))
            .toList(),
      ],
    );
  }
}
