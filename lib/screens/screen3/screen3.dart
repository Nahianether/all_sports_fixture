import 'package:flutter/material.dart';

import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import 'components/screen3_body.dart';


class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      bottomNavigationBar: const KBottomNavBar(),
    );
  }
}
