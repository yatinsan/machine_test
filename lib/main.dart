import 'package:flutter/material.dart';
import 'package:machine_test/apis/apis.dart';
import 'package:machine_test/config/routes/routes.dart';
import 'package:machine_test/config/theme/theme.dart';
import 'package:machine_test/view/home/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 var pref = await SharedPreferences.getInstance();
 // token= pref.getString('token') ?? '';
 print(token);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: apptheme,
      debugShowCheckedModeBanner: false,
      title: 'Machine Test',
      initialRoute: token == '' ? '/' : HomePage.routeName ,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
