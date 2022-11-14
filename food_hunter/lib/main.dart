import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(FoodHunter());

class FoodHunter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      // app theme
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      // default route
      home: RootPage(),
    );
  }
}

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        elevation: 0,
        // profile icon...
        title: Container(
          margin: const EdgeInsets.fromLTRB(15, 6, 6, 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        // action bar buttons...
        actions: [
          // shopping cart icon...
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                )),
            margin: EdgeInsets.fromLTRB(4, 4, 4, 4),
            padding: EdgeInsets.zero,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined),
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                )),
            margin: EdgeInsets.fromLTRB(4, 4, 30, 4),
            padding: EdgeInsets.zero,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_mark_outlined),
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const HomePage(),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.lightGreen,
        // decoration: BoxDecoration(
        //   border: Border.all(),
        // ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // padding...
            const SizedBox(
              height: 30,
            ),
            // welcome
            welcomeUser('Chris'),
            // padding...
            const SizedBox(
              height: 40,
            ),
            // lower layout
            lowerLayout(),
          ],
        ),
      ),
    );
  }
}

class lowerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            top: 28,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Color.fromARGB(255, 243, 243, 243),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // top pad
                  SizedBox(
                    height: 20,
                  ),
                  foodList(),
                  // top pad
                  SizedBox(
                    height: 20,
                  ),
                  FoodCard(),
                ],
              ),
            ),
          ),
          // search food
          searchFood(),
        ],
      ),
    );
  }
}

// widget: food card
Widget FoodCard() {
  return Container(
    padding: const EdgeInsets.all(20),
    width: 250,
    height: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.lightGreen,
      ),
      image: DecorationImage(
        image: AssetImage('Images/food1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          right: 1,
          top: 1,
          child: Container(
            child: IconButton(
              iconSize: 40,
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          left: 1,
          bottom: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "\$ 15.00",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                "Springrolls",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// widget: food list
class foodList extends StatefulWidget {
  const foodList({super.key});
  @override
  State<StatefulWidget> createState() => foodListPage();
}

class foodListPage extends State<foodList> {
  Widget build(BuildContext context) {
    // food list
    List<String> foodType = [
      'Noodles',
      'Pizza',
      'Italians',
      'Chinese',
      'BBQ',
      'Indians',
      'Thais',
      'Desserts'
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (var food in foodType)
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(100, 50),
                  elevation: 1,
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    color: Colors.green,
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  '${food}',
                  style: GoogleFonts.poorStory(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// widget: search box
Widget searchFood() {
  return Container(
    margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
    child: TextField(
      textAlignVertical: TextAlignVertical.center,
      style: GoogleFonts.poorStory(
        color: Colors.green,
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 20),
          hintText: 'Search for anything...',
          hintStyle: GoogleFonts.poorStory(
            color: Colors.grey,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
            child: Icon(
              Icons.search,
              color: Colors.green,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2,
            ),
          )),
    ),
  );
}

// widget: welcome user
Widget welcomeUser(String user) {
  return Container(
    padding: EdgeInsets.zero,
    margin: const EdgeInsets.fromLTRB(30, 6, 30, 6),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, ${user}',
          style: GoogleFonts.poorStory(
            color: Colors.white,
            fontSize: 35,
          ),
        ),
        Text(
          'Looking to hunt delicious food?',
          style: GoogleFonts.poorStory(
            color: Colors.white,
            fontSize: 30,
          ),
        )
      ],
    ),
  );
}
