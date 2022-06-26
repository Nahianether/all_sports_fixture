import 'dart:io';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

import '../components/common/functions/no_internet.dart';
import '../models/get_all_country/get_all_country_model.dart';

Future<GetCountryList?> getAllCountryListApi() async {
  // bool _hasInternet = await hasInternet();
  // if (!_hasInternet) {
  //   return GetCountryList();
  // }
  try {
    GetCountryList? getAllCountryList;
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://www.thesportsdb.com/api/v1/json/2/all_countries.php'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var body = await response.stream.bytesToString();
      print(body);
      getAllCountryList = getCountryListFromJson(body);
      return getAllCountryList;
    } else {
      print(response.reasonPhrase);
    }
    return null;
  } on SocketException catch (_) {
    EasyLoading.showError('No Internet Connection');
  } catch (_) {
    EasyLoading.showError('Something went wrong');
  }
  return null;
}
