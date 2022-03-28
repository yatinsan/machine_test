import 'package:flutter/material.dart';
import 'package:machine_test/config/constants/colors.dart';
import 'package:machine_test/view/auth/signinpage.dart';
import 'package:machine_test/widgets/buttonyt.dart';

class Landingpage extends StatelessWidget {
  static const String routeName = '/landingpage';
  const Landingpage({Key? key}) : super(key: key);

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
            YtButton(
                text: 'Sign in',
                onPressed: () {
                  Navigator.of(context).pushNamed(Screensignin.routeName);
                }),
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
