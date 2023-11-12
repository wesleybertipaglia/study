// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

const firebaseOptions = FirebaseOptions(
  // key
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(QuestionsApp());
}

class QuestionsApp extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;
  
  @override
  Widget build(BuildContext context) {
    if(auth.currentUser == null) {
      auth.signInAnonymously();
    }
    
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final txtQuestion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Q&A"),
            Text("CODE: CODIGO"),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: firestore
            .collection('questions')
            .orderBy('likesCount', descending: true)
            .orderBy('date', descending: false)
            .snapshots(),
          builder: (_, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            List<Widget> itens = [];

            itens.add(
              Card(
                // elevation: 4,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        controller: txtQuestion,
                        maxLines: 8,
                        minLines: 4,
                        decoration: InputDecoration(
                          hintText: "Faça sua question...",
                          border: InputBorder.none,
                        ),
                        autofocus: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Enviar como anônimo",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                          ElevatedButton(
                            onPressed: () async {
                              await firestore.collection('questions').add({
                                'question': txtQuestion.text,
                                'uid': auth.currentUser!.uid,
                                'likes': [],
                                'likesCount': 0,
                                'date': DateTime.now(),
                              });
                              txtQuestion.clear();
                            },
                            child: Text("Enviar"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );

            itens.add(
              SizedBox(
                height: 10,
              ),
            );

            var docs = snapshot.data!.docs;

            itens.addAll(docs
                .map((doc) => Card(
                      // elevation: 6,
                      child: ListTile(
                        contentPadding: EdgeInsets.fromLTRB(16, 4, 16, 10),
                        leading: CircleAvatar(child: Text("A")),
                        title: Text("Anonymous"),
                        subtitle: Text(doc['question']),                            
                        trailing: SizedBox(
                          width: 60,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () async {
                                  await doc.reference.update({
                                    'likes': FieldValue.arrayUnion([auth.currentUser!.uid]),
                                  });

                                  // Recarrega o documento após a atualização dos likes
                                  var updatedDoc = await doc.reference.get();

                                  // Atualiza o valor de 'likesCount' com o tamanho da lista atualizada de likes
                                  doc.reference.update({
                                    'likesCount': updatedDoc['likes'].length,
                                  });
                                },
                                icon: Icon(Icons.thumb_up),
                              ),
                              Text(doc['likes'].length.toString()),
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList());

            return ListView(
              children: itens,
            );
          },
        ),
      ),
    );
  }
}