import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/get_all_league_in_country/get_all_league_in_country_model.dart';
import '../../../providers/get_all_league_in_country/get_all_league_in_country.dart';

class Body extends StatelessWidget {
  const Body({Key? key, this.countryName}) : super(key: key);

  final String? countryName;

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<GetAllLeagueInCountryProvider>(context, listen: false);
    return FutureBuilder<GetLeagueInCountry?>(
      future: provider.getAllLeagueInCountry(),
      builder: (context, snapshot) {
        final leagueProvider =
            Provider.of<GetAllLeagueInCountryProvider>(context);
        return ListView.builder(
          shrinkWrap: true,
          itemCount:
              leagueProvider.getAllLeagueInCountryList?.countries?.length,
          itemBuilder: (context, index) {
            print('League length:');
            print(leagueProvider.getAllLeagueInCountryList?.countries?.length);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              child: Card(
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      leagueProvider.getAllLeagueInCountryList
                              ?.countries?[index].entries.first.value ??
                          '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
