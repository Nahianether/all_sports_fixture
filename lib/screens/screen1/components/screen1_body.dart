import 'package:flutter/material.dart';
import 'package:pattern/models/get_all_country/get_all_country_model.dart';
import 'package:provider/provider.dart';

import '../../../api/get_all_country.dart';
import '../../../providers/get_all_country/get_all_country.dart';

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
            itemCount: categoryProvider.getAllCountryList!.countries!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(categoryProvider
                        .getAllCountryList?.countries?[index].nameEn ??
                    ''),
              );
            },
          );
        });
  }
}

https://www.thesportsdb.com/api.php
