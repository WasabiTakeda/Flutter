import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  // list of news tabs
  List<String> news_list = [
    'Health',
    'Politics',
    // 'Science',
    // 'Food',
    // 'Technology',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // action bar
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
          ),
        ),
        // body
        body: Container(
          padding: EdgeInsets.zero,
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title 'discover'
              Text(
                'DISCOVER',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'News from all over the world',
                style: GoogleFonts.raleway(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // search box 'discover'
              TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(25),
                  // additionals
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.1),
                  // hint
                  hintText: 'Search',
                  hintStyle: GoogleFonts.raleway(
                    color: Colors.grey,
                  ),
                  // prefix icon
                  prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Icon(
                      Icons.search_outlined,
                    ),
                  ),
                  // suffix icon
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Icon(
                      Icons.tune_outlined,
                    ),
                  ),
                  // borders...
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // type of news 'discover'
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.green),
                  ),
                ),
                child: TabBar(
                  // isScrollable: true,
                  tabs: [
                    for (var news_tab in news_list)
                      Tab(
                        child: Text(
                          '${news_tab}',
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TabBarView(
                    children: [
                      // health
                      ListView(
                        children: <Widget>[
                          for (var num = 1; num <= 10; num++)
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // headline image
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: double.infinity,
                                      width: 100,
                                      child: Image.asset(
                                        'images/image1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  // news content
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Blah Blah Blah Blah Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah',
                                            style: GoogleFonts.raleway(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.watch_later_outlined,
                                                    color: Colors.grey,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '5 hours ago',
                                                    style: GoogleFonts.raleway(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.remove_red_eye_sharp,
                                                    color: Colors.grey,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '345 views',
                                                    style: GoogleFonts.raleway(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      ListView(
                        children: <Widget>[
                          for (var num = 1; num <= 10; num++)
                            Container(
                              height: 50,
                              child: Text('News 2'),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
