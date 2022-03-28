import 'package:flutter/material.dart';
import 'package:machine_test/view/auth/Signinpage.dart';
import 'package:machine_test/view/auth/landingpage.dart';
import 'package:machine_test/view/home/homepage.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Landingpage.routeName:
        {
          return _route(const Landingpage());
        }
      case Screensignin.routeName:
        {
          return _route(const Screensignin());
        }
      case HomePage.routeName:
        {
          return _route(const HomePage());
        }
      default:
        {
          return _route(const Landingpage());
        }
    }
  }

  static Route _route(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
