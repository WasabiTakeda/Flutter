import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import pages
import 'package:final_app/explore.dart';
import 'package:final_app/home.dart';

void main() => runApp(FinalApp());

// material app
class FinalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // turn off debug
      debugShowCheckedModeBanner: false,
      // app theme
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home page
      home: RootPage(),
    );
  }
}

// root page
class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // local vars
  // current selected page index
  int currentPage = 1;
  // current selected page
  List<Widget> pages = [HomePage(), ExplorePage(), HomePage(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.map_rounded,
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(
              Icons.question_mark_rounded,
              color: Colors.black,
            ),
          ),
        ],
        title: Text(
          "Great Destinations",
          style: GoogleFonts.roboto(
            color: Colors.black,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),

      // body (pages)
      body: Container(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.all(20),
        child: pages[currentPage],
      ),

      // bottom nav
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "HOME",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_rounded),
              label: "EXPLORE",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: "ACCOUNT",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_rounded),
              label: "MORE",
              backgroundColor: Colors.black,
            ),
          ],

          // styles
          selectedLabelStyle: GoogleFonts.roboto(fontWeight: FontWeight.w300),
          // properties
          currentIndex: currentPage,
          onTap: (int index) {
            setState(() {
              currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
