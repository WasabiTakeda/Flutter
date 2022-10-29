import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Learn Flutter"),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios))),
      body: Column(
        children: [
          Image.asset('images/img1.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
            thickness: 5,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(5.0),
            width: double.infinity,
            color: Colors.green,
            child: Center(
              child: const Text(
                "This is a scenic view...",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                debugPrint("Pressed");
              },
              child: const Text(
                "First Button",
                style: const TextStyle(
                  color: Colors.white,
                ),
              )),
          OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Second Button",
                style: const TextStyle(
                  color: Colors.green,
                ),
              ))
        ],
      ),
    );
  }
}
