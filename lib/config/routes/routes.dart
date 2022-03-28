import 'package:flutter/material.dart';
import 'package:machine_test/view/auth/login.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/login':
        {
          return _route(const ScreenLogin());
        }
      default:
        {
          return _route(ScreenLogin());
        }
    }
  }

  static Route _route(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
