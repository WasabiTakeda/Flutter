import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// imports package classes
import 'package:app_final/provincecard.dart';

class ExplorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // title
          Text(
            "Visit Me",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // lists of provinces
          ListOfProvinces(),
        ],
      ),
    );
  }
}

// list of provinces
Widget ListOfProvinces() {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      // get the list from the province card class
      child: ProvinceCard(),
    ),
  );
}
