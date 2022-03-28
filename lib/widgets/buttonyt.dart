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
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            primary: Ytcolors.maincolor, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      ),
    );
  }
}
