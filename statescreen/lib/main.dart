import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StateScreen());
}

class StateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // active state
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    activeIndex = 0;
                  });
                },
                child: Text("Button 1"),
                style: OutlinedButton.styleFrom(
                  backgroundColor:
                      (activeIndex == 0) ? Colors.grey : Colors.white,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    activeIndex = 1;
                  });
                },
                child: Text("Button 2"),
                style: OutlinedButton.styleFrom(
                  backgroundColor:
                      (activeIndex == 1) ? Colors.grey : Colors.white,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    activeIndex = 2;
                  });
                },
                child: Text("Button 3"),
                style: OutlinedButton.styleFrom(
                  backgroundColor:
                      (activeIndex == 2) ? Colors.grey : Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
