import 'package:flutter/material.dart';

import '../../api/get_all_league_in_country.dart';
import '../../models/get_all_league_in_country/get_all_league_in_country_model.dart';

class GetAllLeagueInCountryProvider extends ChangeNotifier {
  GetLeagueInCountry? getAllLeagueInCountryList;

  Future<GetLeagueInCountry?> getAllLeagueInCountry() async {
    await getAllLeagueInCountryApi().then((value) {
      if (getAllLeagueInCountryList == null) {
        getAllLeagueInCountryList = value;
        notifyListeners();
      } else {
        getAllLeagueInCountryList = getAllLeagueInCountryList;
        notifyListeners();
      }
    });
    return getAllLeagueInCountryList;
  }
}
