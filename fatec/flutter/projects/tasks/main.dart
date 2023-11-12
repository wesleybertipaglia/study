import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task_list/task-create.dart';
import 'package:task_list/task-list.dart';
import 'package:task_list/user-create.dart';
import 'package:task_list/user-login.dart';

const firebaseConfig = FirebaseOptions(
  // enter config
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: TaskListPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/user-login',
      routes: {
        '/task-create': (context) => TaskCreatePage(),
        '/task-list': (context) => TaskListPage(),
        '/user-create': (context) => UserCreatePage(),
        '/user-login': (context) => UserLoginPage()
      },
    );
  }
}
