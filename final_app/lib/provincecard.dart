import 'package:final_app/future_list.dart';
import 'package:final_app/provinces.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:final_app/province_detail_page.dart';

class ProvinceCard extends StatefulWidget {
  const ProvinceCard({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProvinceCardState();
}

class _ProvinceCardState extends State<ProvinceCard> {
  // lists of provinces
  List<Province>? provinces;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    // get provinces
    getProvinces();
  }

  // method: get provinces
  getProvinces() async {
    provinces = await FutureList().getProvinces();
    if (provinces != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoaded,
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: provinces?.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(provinces![index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${provinces![index].name.toString()}',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      '${provinces![index].placeCount} Places',
                      style: GoogleFonts.roboto(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProvinceDetailPage(id: provinces![index].id),
                    ),
                  );
                });
              },
            ),
          );
        },
      ),
    );
  }
}
