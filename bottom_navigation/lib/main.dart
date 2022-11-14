import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// pages
import 'package:bottom_navigation/home.dart';
import 'package:bottom_navigation/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      // default route
      home: RootPage(),
    );
  }
}

// root page...
class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> page = [HomePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation",
            style: GoogleFonts.poorStory(
              color: Colors.white,
            )),
        foregroundColor: Colors.white,
      ),
      // pages
      body: page[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // Shifting
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_outlined),
            label: "Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_outlined),
            label: "Profile",
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: currentPage,
        // selected item style
        selectedItemColor: Colors.white,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
