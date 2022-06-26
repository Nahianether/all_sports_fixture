import 'package:flutter/material.dart';

import '../../../helpers/size_config/size_config.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/no_internet.jpg',
            width: ScreenSize.width * 0.75,
            fit: BoxFit.fitWidth,
          ),
          IconButton(
            onPressed: () async {},
            icon: const Icon(Icons.refresh),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
