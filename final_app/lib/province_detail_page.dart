import 'package:final_app/future_list.dart';
import 'package:final_app/province_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProvinceDetailPage extends StatefulWidget {
  //constructor
  const ProvinceDetailPage({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<StatefulWidget> createState() => _ProvinceDetailPageState();
}

class _ProvinceDetailPageState extends State<ProvinceDetailPage> {
  // province detail
  ProvinceDetail? provinceDetail;
  var isLoaded = false;

  // override initial state
  @override
  void initState() {
    super.initState();

    //get province detail
    getProvinceDetail();
  }

  //get province detail
  getProvinceDetail() async {
    provinceDetail = await FutureList().getProvinceDetail(widget.id);
    if (provinceDetail != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title: Text(
          (isLoaded) ? provinceDetail!.name : "...",
          style: GoogleFonts.roboto(
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),

      //body
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: <Widget>[
              //image
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    //provinceDetail!.imageUrl,
                    (isLoaded) ? provinceDetail!.imageUrl : "...",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // //shortdescription
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: SingleChildScrollView(
                  child: Text(
                    //provinceDetail!.shortDescription,
                    (isLoaded) ? provinceDetail!.shortDescription : '...',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
