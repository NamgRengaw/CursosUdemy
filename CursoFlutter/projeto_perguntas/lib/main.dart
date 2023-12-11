import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual valor de 5 ao quadrado?',
      'respostas': [
        {'texto': '15', 'pontuacao' : 0},
        {'texto': '50', 'pontuacao' : 0},
        {'texto': '33', 'pontuacao' : 0},
        {'texto': '25', 'pontuacao' : 1},
      ],
    },
    {
      'texto': 'Qual ano começou a segunda guerra mundial?',
      'respostas': [
        {'texto' : '1935', 'pontuacao' : 0},
        {'texto' : '1937', 'pontuacao' : 0},
        {'texto' : '1939', 'pontuacao' : 1},
        {'texto' : '1945', 'pontuacao' : 0},
      ],
    },
    {
      'texto': 'Como se chama um desvio condicional na programação?',
      'respostas': [
        {'texto' : 'For', 'pontuacao' : 0},
        {'texto' : 'While', 'pontuacao' : 0},
        {'texto' : 'Do', 'pontuacao' : 0},
        {'texto' : 'If', 'pontuacao' : 1},
      ],
    },
    {
      'texto': 'Quantas vaginas um canguru fêmea tem?',
      'respostas': [
        {'texto' : 'Uma', 'pontuacao' : 0},
        {'texto' : 'Duas', 'pontuacao' : 0},
        {'texto' : 'Três', 'pontuacao' : 1},
        {'texto' : 'Nenhuma', 'pontuacao' : 0},
      ],
    }, {
      'texto': 'Em media quantos ovos um pato pode botar por temporada?',
      'respostas': [
        {'texto' : 'Quatro', 'pontuacao' : 0},
        {'texto' : 'Três', 'pontuacao' : 0},
        {'texto' : 'Seis', 'pontuacao' : 0},
        {'texto' : 'Nenhuma das alternativas', 'pontuacao' : 1},
      ],
    }, {
      'texto': 'Qual o nome do homem por trás do meme "Galo Cego"?',
      'respostas': [
        {'texto' : 'Roberto Jose dos Santos', 'pontuacao' : 0},
        {'texto' : 'Daniel Orivaldo da Silva', 'pontuacao' : 1},
        {'texto' : 'Roberval Weiss', 'pontuacao' : 0},
        {'texto' : 'Silvio Orlando Castro', 'pontuacao' : 0},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                _perguntas,
                _perguntaSelecionada,
                _responder,
              )
            : Resultado(
                _pontuacaoTotal,
                _reiniciarQuestionario
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
