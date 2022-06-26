import 'package:flutter/material.dart';

class KAppBar extends StatelessWidget {
  const KAppBar({
    Key? key,
    this.title,
    this.logo,
    this.icon,
    this.onPressed,
    this.icon1,
    this.onPressed1,
  }) : super(key: key);

  final String? title;
  final String? logo;
  final Icon? icon;
  final void Function()? onPressed;
  final Icon? icon1;
  final void Function()? onPressed1;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: logo != null
                      ? Image.asset(
                          logo!,
                          height: 30,
                          width: 30,
                        )
                      : null,
                ),
              ),
              Text(
                title ?? '',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          const SizedBox.shrink(),
        ],
      ),
      actions: [
        IconButton(
          icon: icon ?? const Icon(Icons.search),
          onPressed: onPressed,
        ),
        IconButton(
          icon: icon1 ?? const Icon(Icons.more_vert),
          onPressed: onPressed1,
        ),
      ],
    );
  }
}
