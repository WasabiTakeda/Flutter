import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = false;
  bool? isChecked = false;
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
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                style: ElevatedButton.styleFrom(
                  primary: isSwitched ? Colors.green : Colors.blue,
                ),
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
                )),
            GestureDetector(
              onTap: () {
                debugPrint("tapped");
              },
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.fire_extinguisher_outlined),
                  Text("Row Widget"),
                  Icon(Icons.fire_extinguisher_outlined)
                ],
              ),
            ),
            Switch(
                value: isSwitched,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitched = newBool;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (bool? newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&psig=AOvVaw103CmUn38f3xzjZZ4BTAEi&ust=1667361569162000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCIjQkIKMjPsCFQAAAAAdAAAAABAE')
          ],
        ),
      ),
    );
  }
}
