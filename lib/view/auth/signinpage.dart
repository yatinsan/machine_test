import 'package:flutter/material.dart';
import 'package:machine_test/apis/apis.dart';
import 'package:machine_test/config/constants/colors.dart';
import 'package:machine_test/view/home/homepage.dart';
import 'package:machine_test/widgets/buttonyt.dart';

class Screensignin extends StatelessWidget {
  static const routeName = '/signin';
  Screensignin({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Text(
          'Sign in',
          style: TextStyle(fontSize: 40, color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.w600),
        )),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    controller: _emailController,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    controller: _passwordController,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(color: Ytcolors.maincolor, fontSize: 17),
                          textAlign: TextAlign.end,
                        ),
                      )),
                  YtButton(
                      text: 'Sign in',
                      onPressed: () async {
                        if (await Api().login(email: _emailController.text, password: _passwordController.text)) {
                          Navigator.of(context).pushNamed(HomePage.routeName);
                        } else {
                          print('Login failed');
                        }
                      })
                ],
              )),
            ),
          ],
        ),
      ],
    ));
  }
}
