import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final txtPeso = TextEditingController();

  final txtAltura = TextEditingController();

  var imagem = 'images/obesidade2.jpg';

  double? imc;

  String? mensagem;

  void calculaImc() {
    var peso = double.parse(txtPeso.text);
    var altura = double.parse(txtAltura.text);

    final estilo = const TextStyle(
      color: Colors.white,
      fontSize: 64,
    );

    setState(() => imc = peso / (altura * altura));

    if (imc! < 18.5)
      setState(() {
        imagem = 'images/abaixo.jpg';
        mensagem = 'Abaixo do peso.';
      });
    else if (imc! < 24.9)
      setState(() {
        imagem = 'images/ideal.jpg';
        mensagem = 'Peso Ideal.';
      });
    else if (imc! < 29.9)
      setState(() {
        imagem = 'images/excesso.jpg';
        mensagem = 'Excesso peso.';
      });
    else if (imc! < 39.9)
      setState(() {
        imagem = 'images/obesidade1.jpg';
        mensagem = 'Obesidade I.';
      });
    else
      setState(() {
        imagem = 'images/obesidade2.jpg';
        mensagem = 'Obesidade II';
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
          title: Text("Cálculo IMC"),
        ),
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 10, 0, 49),
              width: double.infinity,
              height: 48,
              child: Center(
                child: Text("Cálculo IMC"),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                // color: Colors.blue,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: txtPeso,
                      decoration: InputDecoration(labelText: "Peso"),
                    ),
                    TextField(
                      controller: txtAltura,
                      decoration: InputDecoration(labelText: "Altura"),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: calculaImc,
                        child: Text("Calcular"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FittedBox(
                child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(10),
                  child: Image.asset(imagem),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
