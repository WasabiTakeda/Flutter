import 'package:app_final/future_list.dart';
import 'package:app_final/province_detail.dart';
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
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        title: Text(
          (isLoaded) ? "${provinceDetail!.name}" : "...",
          //"...",
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

      //body
      body: Text("hello + ${widget.id}"),
    );
  }
}
