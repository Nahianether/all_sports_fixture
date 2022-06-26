import 'package:flutter/material.dart';

import '../../../providers/bottom_navbar/navbar.dart';

class KBottomNavBar extends StatelessWidget {
  const KBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: BottomNavBarProvider.selected.index,
      onTap: (val) async => await BottomNavBarProvider.select(
        context: context,
        value: Screens.values[val],
      ),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'One',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_backup_restore),
          label: 'Two',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Three',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Four',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Five',
        ),
      ],
    );
  }
}
