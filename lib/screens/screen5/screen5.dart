import 'package:flutter/material.dart';

import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import 'components/screen5_body.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      bottomNavigationBar: const KBottomNavBar(),
    );
  }
}
