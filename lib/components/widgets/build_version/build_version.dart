import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

buildVersion(BuildContext context) {

  return FutureBuilder<PackageInfo>(
    future: PackageInfo.fromPlatform(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        return Container(
          padding: const EdgeInsets.all(8),
          child: Text(
            snapshot.data!.version,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        );
      }
      return Container();
    },
  );
}
