import 'package:flutter/material.dart';

import '../../../helpers/constants/constants.dart';

class DummyPersoanImageContainer extends StatelessWidget {
  const DummyPersoanImageContainer({
    Key? key,
    this.width = 1,
    this.height = 1,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45.0),
      child: Image.asset(
        'assets/images/dummy_person.png',
        height: kImageSize * height!,
        width: kImageSize * width!,
      ),
    );
  }
}
