import 'package:flutter/material.dart';

import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import 'components/screen2_body.dart' show Body;

class Screen2 extends StatelessWidget {
  const Screen2({Key? key, this.countryName}) : super(key: key);

  final String? countryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(countryName: countryName.toString()),
      bottomNavigationBar: const KBottomNavBar(),
    );
  }
}
