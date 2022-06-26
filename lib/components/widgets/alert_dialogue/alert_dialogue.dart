import 'package:flutter/material.dart';

class KAlertDialog extends StatelessWidget {
  final String buttonName;
  final String? title, content, button2Name;
  final GestureTapCallback? onPressed, onPressed2;
  final bool hideButton;

  const KAlertDialog(
      {Key? key,
      this.title,
      this.content,
      required this.buttonName,
      this.button2Name,
      this.onPressed,
      this.onPressed2,
      this.hideButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      actionsPadding: const EdgeInsets.only(bottom: 5.0),
      title: title != null
          ? Text(
              title!,
              textAlign: TextAlign.center,
            )
          : null,
      content: content != null
          ? Text(
              content!,
              textAlign: TextAlign.center,
            )
          : null,
      actions: [
        Row(
          mainAxisAlignment: hideButton == false
              ? MainAxisAlignment.spaceAround
              : MainAxisAlignment.center,
          children: [
            hideButton == false
                ? ElevatedButton(
                    onPressed: onPressed2 ?? () => Navigator.pop(context),
                    child: Text(button2Name ?? 'cancel'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  )
                : const SizedBox.shrink(),
            ElevatedButton(
              onPressed: onPressed,
              child: Text(buttonName),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
