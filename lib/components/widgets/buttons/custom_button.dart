import 'package:flutter/material.dart';

class KCustomButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  final Color? color, textColor;
  final Gradient? gradients;
  final double? fontSize;
  final double? height;
  final double? width;
  final bool? opacity;
  final bool? leftH;
  final Color? gradientLeftColorDeep;
  final Color? gradientLeftColorLight;
  final Color? gradientRightColorDeep;
  final Color? gradientRightColorLight;

  const KCustomButton({
    Key? key,
    this.text,
    this.onPressed,
    this.color,
    this.fontSize,
    this.textColor,
    this.gradients,
    this.opacity = false,
    this.height = 50,
    this.width = 100,
    this.leftH,
    this.gradientLeftColorDeep,
    this.gradientLeftColorLight,
    this.gradientRightColorDeep,
    this.gradientRightColorLight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  opacity == true ? Colors.pink.shade700 : Colors.pink.shade700,
                  opacity == true
                      ? Colors.pinkAccent.shade400.withOpacity(0.7)
                      : Colors.pinkAccent.shade400.withOpacity(0.7)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: const [0.0, 1.0],
                tileMode: TileMode.clamp),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: opacity! ? Colors.grey.shade100 : Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
