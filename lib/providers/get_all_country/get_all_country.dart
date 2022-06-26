import 'package:flutter/material.dart';

import '../../api/get_all_country.dart';
import '../../models/get_all_country/get_all_country_model.dart';

class GetCountryProvider extends ChangeNotifier {
  GetCountryList? getAllCountryList;

  Future<GetCountryList?> getAllCountry() async {
    await getAllCountryListApi().then((value) {
      getAllCountryList == null
          ? getAllCountryList = value
          : getAllCountryList = getAllCountryList;
      notifyListeners();
    });
    return getAllCountryList;
  }
}
