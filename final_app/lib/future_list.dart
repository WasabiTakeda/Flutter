import 'dart:io';

import 'package:final_app/province_detail.dart';
import 'package:final_app/provinces.dart';
import 'package:http/http.dart' as http;
import 'exception_handler.dart';

class FutureList {
  // province list api
  Future<List<Province>?> getProvinces() async {
    var uri = Uri.parse(
        'https://tests3bk.s3.ap-southeast-1.amazonaws.com/provinces.json');
    var client = http.Client();

    try {
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        var json = response.body;
        return provinceFromJson(json);
      }
    } on FormatException catch (e) {
      // handling this exception
      throw InvalidFormatException("Bad Format");
    } on SocketException {
      // handling this exception
      throw SocketException("No Internet");
    }
  }

  // province detail api
  Future<ProvinceDetail?> getProvinceDetail(int id) async {
    var uri = Uri.parse(
        "https://tests3bk.s3.ap-southeast-1.amazonaws.com/province/$id.json");
    var client = http.Client();

    try {
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        var json = response.body;
        return provinceDetailFromJson(json);
      }
    } on FormatException catch (e) {
      // handling this exception
      throw InvalidFormatException("Bad Format");
    } on SocketException {
      // handling this exception
      throw SocketException("No Internet");
    }
  }
}
