import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int i = 0, j = 0, sortedNum = 0;
  String status = "Você é o X\nClique em um quadrado para jogar";
  var matrix = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
  ];

  void buildMatrix() {
    for (i = 0; i < 3; i++) {
      for (j = 0; j < 3; j++) {
        matrix[i][j] = "";
      }
    }
  }

  void sort() {
    do {
      i = Random().nextInt(3);
      j = Random().nextInt(3);
    } while (matrix[i][j] != "");

    setState(() => matrix[i][j] = "O");
  }

  void verificaGanhador(String player) {
    // verifica horizontais
    for (i = 0; i < 3; i++) {
      if (matrix[i][0] != "" &&
          matrix[i][0] == matrix[i][1] &&
          matrix[i][0] == matrix[i][2]) {
        if (player == "X") {
          setState(() => status = "Ganhou");
        } else {
          setState(() => status = "Perdeu");
        }
      } else if (matrix[0][i] != "" &&
          matrix[0][i] == matrix[1][i] &&
          matrix[0][i] == matrix[2][i]) {
        if (player == "X") {
          setState(() => status = "Ganhou");
        } else {
          setState(() => status = "Perdeu");
        }
      }
    }
    if (matrix[1][1] != "") {
      if (matrix[1][1] == matrix[0][0] && matrix[1][1] == matrix[2][2]) {
        if (player == "X") {
          setState(() => status = "Ganhou");
        } else {
          setState(() => status = "Perdeu");
        }
      } else if (matrix[1][1] == matrix[0][2] && matrix[1][1] == matrix[2][1]) {
        if (player == "X") {
          setState(() => status = "Ganhou");
        } else {
          setState(() => status = "Perdeu");
        }
      }
    }
  }

  void play(int i, j) {
    if (matrix[i][j] == "") {
      setState(() => matrix[i][j] = "X");
      verificaGanhador("X");
      if (status != "Ganhou" && status != "Perdeu") {
        sort();
        verificaGanhador("O");
      }
    }
  }

  void reset() {
    setState(() => buildMatrix());
    setState(() => status = "Você é o X\nClique em um quadrado para jogar");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Jogo da Velha"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 100,
              child: Text(status),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () => play(0, 0),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 202, 202, 202),
                            child: Center(
                              child: Text(matrix[0][0]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () => play(0, 1),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Center(
                              child: Text(matrix[0][1]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () => play(0, 2),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 202, 202, 202),
                            child: Center(
                              child: Text(matrix[0][2]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () => play(1, 0),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Center(
                              child: Text(matrix[1][0]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () => play(1, 1),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 202, 202, 202),
                            child: Center(
                              child: Text(matrix[1][1]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () => play(1, 2),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Center(
                              child: Text(matrix[1][2]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () => play(2, 0),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 202, 202, 202),
                            child: Center(
                              child: Text(matrix[2][0]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () => play(2, 1),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Center(
                              child: Text(matrix[2][1]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () => play(2, 2),
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Color.fromARGB(255, 202, 202, 202),
                            child: Center(
                              child: Text(matrix[2][2]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 100,
              child:
                  TextButton(onPressed: () => reset(), child: Text("Resetar")),
            ),
          ],
        ),
      ),
    );
  }
}
