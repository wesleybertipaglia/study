import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(GameApp());
}

class GameApp extends StatefulWidget {
  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  final estilo = const TextStyle(
    color: Colors.white,
    fontSize: 32,
  );
  final titulo = const TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  String status = 'Clique em uma opcao para jogar', sortedStr = '';

  void play(String option) {
    var sortedNum = Random().nextInt(3);

    if (sortedNum == 0) {
      sortedStr = 'Pedra';
    } else if (sortedNum == 1) {
      sortedStr = 'Papel';
    } else if (sortedNum == 2) {
      sortedStr = 'Tesoura';
    }

    if (option == sortedStr) {
      setState(() => status = '$sortedStr. Empate');
    }
    // pedra = ganha da tesoura, perde para o papel
    else if (option == 'Pedra') {
      if (sortedStr == 'Tesoura') {
        setState(() => status = '$sortedStr. Ganhou');
      } else if (sortedStr == 'Papel') {
        setState(() => status = '$sortedStr. Perdeu');
      }
    }

    // papel = ganha da pedra, perde para a tesoura
    else if (option == 'Papel') {
      if (sortedStr == 'Pedra') {
        setState(() => status = '$sortedStr. Ganhou');
      } else if (sortedStr == 'Tesoura') {
        setState(() => status = '$sortedStr. Perdeu');
      }
    }

    // tesoura = ganha do papel, perde para a pegra
    else if (option == 'Tesoura') {
      if (sortedStr == 'Papel') {
        setState(() => status = '$sortedStr. Ganhou');
      } else if (sortedStr == 'Pedra') {
        setState(() => status = '$sortedStr. Perdeu');
      }
    }
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 64,
              child: Center(
                child: Text(status, style: titulo),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => play('Pedra'),
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Center(
                    child: Text('Pedra', style: estilo),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => play('Papel'),
                child: Container(
                  color: Colors.amber,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Center(
                    child: Text('Papel', style: estilo),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => play('Tesoura'),
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Center(
                    child: Text('Tesoura', style: estilo),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
