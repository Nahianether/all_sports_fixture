import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../helpers/constants/constants.dart';
import 'dummy_person_image_container.dart';

class ShowImageContainer extends StatelessWidget {
  const ShowImageContainer({Key? key, this.index = 0, this.imagePath})
      : super(key: key);

  final String? imagePath;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45.0),
      child: imagePath != null
          ? CachedNetworkImage(
              imageUrl: baseLink + imagePath!,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
                  color: kDefaultColor,
                ),
              ),
              errorWidget: (context, url, error) {
                return const Icon(
                  Icons.error_outline,
                );
              },
              width: kImageSize * 1.5,
              height: kImageSize * 1.5,
            )
          : const DummyPersoanImageContainer(),
    );
  }
}
