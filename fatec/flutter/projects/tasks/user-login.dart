import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_list/task-list.dart';

class UserLoginPage extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController txtemail = TextEditingController();
  final TextEditingController txtsenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: txtemail,
              decoration: InputDecoration(
                labelText: "E-mail",
              ),
            ),
            TextField(
              controller: txtsenha,
              decoration: InputDecoration(
                labelText: "Senha",
              ),
              obscureText: true,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  auth.signInWithEmailAndPassword(
                      email: txtemail.text, password: txtsenha.text);
                  Navigator.of(context).pushNamed('/task-list');
                },
                child: Text("Entrar"),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(48),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/user-create');
                },
                child: Text("Não tenho conta"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
