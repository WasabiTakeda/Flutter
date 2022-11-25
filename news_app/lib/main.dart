// news applications
import 'package:flutter/material.dart';

// new routes
import 'package:news_app/home.dart';
import 'package:news_app/discover.dart';

// application debug & run
void main() => runApp(const News());

// application kernel
class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // default route
      home: const RootPage(),
    );
  }
}

// root page
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // pages
  int currentPage = 0;
  List<Widget> pages = [
    // home page
    HomePage(),
    // discover page
    DiscoverPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body
      resizeToAvoidBottomInset: false,
      body: pages[currentPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          height: 80,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'HOME',
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'SEARCH',
                backgroundColor: Color.fromARGB(255, 95, 95, 95),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'PROFILE',
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
            currentIndex: currentPage,
            onTap: (int index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
