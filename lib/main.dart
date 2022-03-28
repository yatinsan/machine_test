import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/config/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine Test',
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
