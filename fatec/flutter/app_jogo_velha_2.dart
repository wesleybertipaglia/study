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
  // funções do app e programação

  var strPos = ["", "", "", "", "", "", "", "", ""];
  int sortedNum = 0;
  String status = "Jogue";

  void play(int position) {
    setState(() => strPos[position] = "X");
    verificaGanhador("X");
    if (status != "Ganhou" && status != "Perdeu") {
      computer();
      verificaGanhador("O");
    }
  }

  int sort() {
    do {
      sortedNum = Random().nextInt(9);
    } while (strPos[sortedNum] != "");

    return sortedNum;
  }

  void computer() {
    sort();
    setState(() => strPos[sortedNum] = "O");
  }

  void verificaGanhador(String player) {
    if (strPos[0] == player && strPos[1] == player && strPos[2] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    } else if (strPos[3] == player &&
        strPos[4] == player &&
        strPos[5] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    } else if (strPos[6] == player &&
        strPos[7] == player &&
        strPos[8] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    } else if (strPos[0] == player &&
        strPos[3] == player &&
        strPos[6] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    } else if (strPos[1] == player &&
        strPos[4] == player &&
        strPos[7] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    } else if (strPos[2] == player &&
        strPos[5] == player &&
        strPos[8] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    } else if (strPos[0] == player &&
        strPos[4] == player &&
        strPos[8] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    } else if (strPos[2] == player &&
        strPos[4] == player &&
        strPos[6] == player) {
      if (player == "X") {
        setState(() => status = "Ganhou");
      } else {
        setState(() => status = "Perdeu");
      }
    }
  }

  void reset() {
    setState(() => strPos = ["", "", "", "", "", "", "", "", ""]);
    setState(() => status = "Jogue");
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(status),
            Row(
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () => play(0),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 202, 202, 202),
                      child: Center(
                        child: Text(strPos[0]),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () => play(1),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                        child: Text(strPos[1]),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () => play(2),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 202, 202, 202),
                      child: Center(
                        child: Text(strPos[2]),
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
                    onTap: () => play(3),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                        child: Text(strPos[3]),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () => play(4),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 202, 202, 202),
                      child: Center(
                        child: Text(strPos[4]),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () => play(5),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                        child: Text(strPos[5]),
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
                    onTap: () => play(6),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 202, 202, 202),
                      child: Center(
                        child: Text(strPos[6]),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () => play(7),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                        child: Text(strPos[7]),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () => play(8),
                    child: Container(
                      width: 200,
                      height: 48,
                      color: Color.fromARGB(255, 202, 202, 202),
                      child: Center(
                        child: Text(strPos[8]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(onPressed: () => reset(), child: Text("Resetar")),
          ],
        ),
      ),
    );
  }
}
