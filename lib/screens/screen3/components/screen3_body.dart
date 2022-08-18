import 'package:flutter/material.dart';
import 'package:pattern/helpers/size_config/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height,
      width: ScreenSize.width,
      color: Colors.amber.shade200,
      child: Column(
        children: [
          SizedBox(
            height: ScreenSize.height * 0.3,
            width: ScreenSize.width,
            child: Card(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
