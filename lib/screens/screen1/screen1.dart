import 'package:flutter/material.dart';

import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import 'components/screen1_body.dart' show Body;

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Body(),
      ),
      bottomNavigationBar: const KBottomNavBar(),
    );
  }
}
