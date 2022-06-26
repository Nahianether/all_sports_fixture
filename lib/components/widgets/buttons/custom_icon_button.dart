import 'package:flutter/material.dart';

class KIconButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  final Color? color, textColor;
  final Gradient? gradients;
  final double? fontSize;
  final double? height;
  final double? width;
  final dynamic icon;
  final double? iconSize;
  final Color? iconColor;

  const KIconButton(
      {Key? key,
      this.text,
      this.onPressed,
      this.color,
      this.fontSize,
      this.textColor,
      this.gradients,
      this.height,
      this.width,
      this.icon,
      this.iconSize,
      this.iconColor
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            Text(
              text!,
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
