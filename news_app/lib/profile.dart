import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// settings class
class Settings {
  IconData? mainIcon;
  String? name;

  // initialize class tokens
  Settings({this.mainIcon, this.name});
}

class ProfilePage extends StatelessWidget {
  List<Settings> setting = [
    Settings(mainIcon: Icons.bookmark_add_outlined, name: "Favorites"),
    Settings(mainIcon: Icons.download_outlined, name: "Offline Reading"),
    Settings(mainIcon: Icons.feedback_outlined, name: "Suggestions&Feedback"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.menu_outlined),
      //   ),
      // ),
      // body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profileSection(),
            SizedBox(
              height: 80,
            ),
            // lower layout
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                children: [
                  // login section
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                                size: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Facebook",
                            style: GoogleFonts.raleway(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.reddit,
                                color: Colors.red,
                                size: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Reddit",
                            style: GoogleFonts.raleway(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.googlePlusG,
                                color: Colors.cyan,
                                size: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Google",
                            style: GoogleFonts.raleway(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                color: Colors.lightBlue,
                                size: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Twitter",
                            style: GoogleFonts.raleway(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // list view of items
                  Container(
                    child: Column(
                      children: <Widget>[
                        // an item...
                        for (var item in setting) ...[
                          Container(
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // main icon
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Icon(
                                    item.mainIcon,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                // others
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${item.name}",
                                            style: GoogleFonts.raleway(
                                              fontSize: 16,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_circle_right_outlined,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ]
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class profileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // fix overflow
      clipBehavior: Clip.none,
      children: [
        // background image
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
            bottomRight: Radius.circular(80),
          ),
          child: Container(
            child: Image.asset(
              'images/image1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // positioned: profile image
        Positioned(
          bottom: -60,
          child: CircleAvatar(
            radius: 62,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1300972574/photo/millennial-male-team-leader-organize-virtual-workshop-with-employees-online.jpg?b=1&s=170667a&w=0&k=20&c=96pCQon1xF3_onEkkckNg4cC9SCbshMvx0CfKl2ZiYs='),
            ),
          ),
        ),
        // positioned: edit button
        Positioned(
          right: 80,
          bottom: -20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Container(
              color: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
