import 'package:flutter/widgets.dart';
import '../../screens/screen1/screen1.dart';
import '../../screens/screen2/screen2.dart';
import '../../screens/screen3/screen3.dart';
import '../../screens/screen4/screen4.dart';
import '../../screens/screen5/screen5.dart';

import '../../helpers/routes/custom_routes.dart';

class BottomNavBarProvider {
  static Screens selected = Screens.one;

  static Widget _screen() {
    switch (selected) {
      case Screens.one:
        return const Screen1();
      case Screens.two:
        return const Screen2();
      case Screens.three:
        return const Screen3();
      case Screens.four:
        return const Screen4();
      case Screens.five:
        return const Screen5();
      default:
        return const Screen1();
    }
  }

  static Widget get screen => _screen();

  static Future<void> select(
      {required BuildContext context, required Screens value}) async {
    selected = value;
    await Navigator.pushReplacement(
      context,
      FadeRoute(page: screen),
    );
  }
}

enum Screens { one, two, three, four, five }
