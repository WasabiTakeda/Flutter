import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/NavDrawer.dart';

class NewsImage {
  String? headline;
  String? published_dates;
  String? authors;

  NewsImage({this.headline, this.published_dates, this.authors});
}

class HomePage extends StatelessWidget {
  // news lists
  List<NewsImage> news = [
    NewsImage(
        headline: 'Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah',
        published_dates: 'Date_1',
        authors: 'Author_1'),
    NewsImage(
        headline: 'Blah Blah Blah Blah Blah Blah Blah Blah',
        published_dates: 'Date_2',
        authors: 'Author_2'),
    NewsImage(
        headline: 'Blah Blah Blah Blah Blah Blah Blah Blah',
        published_dates: 'Date_3',
        authors: 'Author_3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      // action bar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(330),
        child: AppBar(
          // bottom bar
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              width: MediaQuery.of(context).size.width,
              color: Colors.white.withOpacity(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // news of the day
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'News Of The Day',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // temporary text...
                  Text(
                    'V.I.P Immunization for the Powerful and Their Cronies Rattles South America',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Learn More',
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // top bar
          centerTitle: true,
          title: Text(
            'NEWS',
            style: GoogleFonts.raleway(),
          ),
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          ),
          // behind tab bar and toolbar
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/image1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ),
      // body
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Breaking News',
                    style: GoogleFonts.raleway(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text(
                      'More',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var a_news in news)
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 250,
                                height: 200,
                                child: Image.asset(
                                  'images/image1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 250,
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text(
                                '${a_news.headline}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.raleway(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '${a_news.published_dates}',
                              style: GoogleFonts.raleway(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${a_news.authors}',
                              style: GoogleFonts.raleway(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
