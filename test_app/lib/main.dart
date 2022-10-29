// import material dart for the widget
import 'package:flutter/material.dart';
import 'package:test_app/homePage.dart';

// functions: entry point for the whole app
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // implement build
    return MaterialApp(
      // remove the debug banner
      debugShowCheckedModeBanner: false,
      // app theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // default route of the app (/)
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // locals
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // start of the app
      appBar: AppBar(
        title: const Text('Flutter'),
        foregroundColor: Colors.white,
      ),
      body: const HomePage(),
      // content
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Pressed");
        },
        backgroundColor: Colors.amber[900],
        // child: a widget inside a widget
        child: Icon(Icons.home),
      ),
      // bottom navigation bar
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
