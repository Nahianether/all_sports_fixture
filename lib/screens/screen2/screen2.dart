import 'package:flutter/material.dart';

import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import 'components/screen2_body.dart' show Body;

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      bottomNavigationBar: const KBottomNavBar(),
    );
  }
}
