import 'package:flutter/material.dart';

import '../config/constants/colors.dart';

class YtButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const YtButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          primary: Ytcolors.primary,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
    );
  }
}
