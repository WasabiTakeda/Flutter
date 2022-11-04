import 'package:flutter/material.dart';

void main() => runApp(loginScreen());

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the debug banner...
      debugShowCheckedModeBanner: false,
      // theme...
      theme: ThemeData(primarySwatch: Colors.blue),
      // default route...
      home: const login(),
    );
  }
}

// login class
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<StatefulWidget> createState() => _loginPageState();
}

class _loginPageState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark_outlined),
          ),
        ],
      ),
    );
  }
}
