import 'package:flutter/material.dart';

import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import 'components/screen1_body.dart' show Body;

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      bottomNavigationBar: const KBottomNavBar(),
    );
  }
}
