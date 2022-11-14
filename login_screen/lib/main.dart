import 'package:flutter/material.dart';
import 'package:login_screen/signupPage.dart';

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
        shadowColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // login title...
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                  Icon(Icons.login_sharp, color: Colors.blue, size: 30)
                ],
              ),
              // text fields...
              SizedBox(
                height: 20,
              ),
              textFieldWidget('Enter Email...', 'Email'),
              SizedBox(
                height: 20,
              ),
              textFieldWidget('Enter Password...', 'Password'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  // ignore: prefer_const_constructors
                  style: ElevatedButton.styleFrom(
                      // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20)),
                  onPressed: () {},
                  child: const Text("Login")),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("No account yet?"),
                  SizedBox(width: 5),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return signUpPage();
                          }),
                        );
                      },
                      child: const Text("Sign up"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// text field...
Widget textFieldWidget(String? hintText, String? label) {
  return TextField(
    decoration: InputDecoration(
      icon: Icon(Icons.send),
      hintText: hintText,
      labelText: label,
      helperText: 'Input here',
      counterText: '12 characters',
      border: OutlineInputBorder(),
    ),
  );
}
