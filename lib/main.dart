import 'package:flutter/material.dart';
import 'package:machine_test/config/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine Test',
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
