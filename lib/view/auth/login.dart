import 'package:flutter/material.dart';
import 'package:machine_test/config/constants/colors.dart';

class ScreenLogin extends StatelessWidget {
  static const String routeName = '/login';
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
        ),
        Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 200,
            width: 200,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'DriverEx',
          style: TextStyle(fontSize: 40, color: Ytcolors.maincolor),
        ),
        Expanded(flex: 2, child: SizedBox()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            YtButton(text: 'Sign in', onPressed: () {}),
            const SizedBox(height: 20),
            YtButton(text: 'Register', onPressed: () {}),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Take tour',
              style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 17),
            )),
        Expanded(flex: 1, child: SizedBox()),
      ],
    ));
  }
}

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
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            primary: Ytcolors.maincolor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      ),
    );
  }
}
