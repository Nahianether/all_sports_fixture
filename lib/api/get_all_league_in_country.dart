import 'dart:io';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

import '../models/get_all_league_in_country/get_all_league_in_country_model.dart';

Future<GetLeagueInCountry?> getAllLeagueInCountryApi() async {
  try {
    GetLeagueInCountry? getLeagueInCountry;
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://www.thesportsdb.com/api/v1/json/2/search_all_leagues.php?c=England'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var body = await response.stream.bytesToString();
      print('All League In Country:');
      print(body);
      getLeagueInCountry = getLeagueInCountryFromJson(body);
      return getLeagueInCountry;
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
