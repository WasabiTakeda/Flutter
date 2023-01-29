import 'package:app_final/province_detail.dart';
import 'package:app_final/provinces.dart';
import 'package:http/http.dart' as http;

class FutureList {
  // province list api
  Future<List<Province>?> getProvinces() async {
    var uri = Uri.parse(
        'https://tests3bk.s3.ap-southeast-1.amazonaws.com/provinces.json');
    var client = http.Client();

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return provinceFromJson(json);
    }
  }

  // province detail api
  Future<ProvinceDetail?> getProvinceDetail(int id) async {
    var uri = Uri.parse(
        "https://tests3bk.s3.ap-southeast-1.amazonaws.com/province/${id}.json");
    var client = http.Client();

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return provinceDetailFromJson(json);
    }
  }
}
