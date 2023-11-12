import 'package:flutter/material.dart';

main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // declaracao de variaveis
  String status = "Clique para jogar";
  var statusColor = [Colors.white, Colors.white, Colors.white, Colors.white];
  var estate = 0;

  var questoes = [
    "Quanto é 5 + 5",
    "Quanto é 14 + 7",
    "Quanto é 20 + 11",
    "Quanto é 22 + 2",
    "Quanto é 1 + 11",
  ];

  var respostas = [
    ["10", "6", "4", "3"],
    ["53", "21", "42", "43"],
    ["2", "26", "31", "7"],
    ["13", "46", "24", "13"],
    ["56", "12", "34", "12"]
  ];
  var respostasCorretas = [10, 21, 31, 24, 12];

  void verificaResutado(resp) {
    if (respostas[resp] == respostasCorretas[estate]) {
      setState(() {
        status = "Correto";
        statusColor[resp] = Colors.green;
      });
    } else {
      status = "Errado";
      statusColor[resp] = Colors.red;
    }
    proximaQuestao();
  }

  void proximaQuestao() {
    estate += 1;
    setState(() {
      questoes[estate];
    });
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
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 48,
              margin: EdgeInsets.all(20),
              child: Text(questoes[estate]),
            ),
            Column(
              children: [
                Container(
                    width: double.infinity,
                    height: 48,
                    margin: EdgeInsets.all(20),
                    color: statusColor[0],
                    child: GestureDetector(
                      onTap: () => verificaResutado(0),
                      child: Text(respostas[estate][0]),
                    )),
                Container(
                    width: double.infinity,
                    height: 48,
                    margin: EdgeInsets.all(20),
                    color: statusColor[1],
                    child: GestureDetector(
                      onTap: () => verificaResutado(1),
                      child: Text(respostas[estate][1]),
                    )),
                Container(
                    width: double.infinity,
                    height: 48,
                    margin: EdgeInsets.all(20),
                    color: statusColor[2],
                    child: GestureDetector(
                      onTap: () => verificaResutado(2),
                      child: Text(respostas[estate][2]),
                    )),
                Container(
                    width: double.infinity,
                    height: 48,
                    margin: EdgeInsets.all(20),
                    color: statusColor[3],
                    child: GestureDetector(
                      onTap: () => verificaResutado(3),
                      child: Text(respostas[estate][3]),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
