import 'package:flutter/material.dart';

main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // funções do app e programação

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Titulo"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                // conteúdo da tela do app
                Text("Hello"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
