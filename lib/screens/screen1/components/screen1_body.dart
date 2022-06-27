import 'package:flutter/material.dart';
import 'package:pattern/helpers/routes/custom_routes.dart';
import 'package:pattern/models/get_all_country/get_all_country_model.dart';
import 'package:provider/provider.dart';

import '../../../providers/get_all_country/get_all_country.dart';
import '../../screen2/screen2.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GetCountryProvider>(context, listen: false);
    return FutureBuilder<GetCountryList?>(
      future: provider.getAllCountry(),
      builder: (context, snapshot) {
        final categoryProvider = Provider.of<GetCountryProvider>(context);
        return ListView.builder(
          shrinkWrap: true,
          itemCount: categoryProvider.getAllCountryList?.countries?.length,
          itemBuilder: (context, index) {
            print('Country length:');
            print(categoryProvider.getAllCountryList?.countries?.length);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              child: InkWell(
                onTap: () async => await Navigator.push(
                  context,
                  FadeRoute(
                    page: Screen2(
                        countryName: categoryProvider
                            .getAllCountryList!.countries![index].nameEn
                            .toString()),
                  ),
                ),
                child: Card(
                  color: Colors.blueGrey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        categoryProvider
                                .getAllCountryList?.countries?[index].nameEn ??
                            '',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
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
