import 'package:flutter/material.dart';

class KTextButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  final Color? color, textColor;
  final double? fontSize;
  final double? height;
  final double? width;
  final FontWeight? fontWeight;

  const KTextButton(
      {Key? key,
      this.text,
      this.onPressed,
      this.color,
      this.fontSize,
      this.textColor,
      this.height,
      this.width,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
