

import 'package:flutter/material.dart';
import 'package:machine_test/view/UserDetailPage/user_detail_page.dart';
import 'package:machine_test/view/UserDetailPage/user_detail_provider.dart';
import 'package:machine_test/view/auth/landingpage.dart';
import 'package:machine_test/view/auth/signin_page.dart';
import 'package:machine_test/view/home/homepage.dart';
import 'package:machine_test/view/home/home_page_provider.dart';
import 'package:provider/provider.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case LandingPage.routeName:
        {
          return _route(const LandingPage());
        }
      case Screensignin.routeName:
        {
          return _route(Screensignin());
        }
      case HomePage.routeName:
        {
          return _route(ChangeNotifierProvider(create: (context)=> HomePageProvider(),child: HomePage()));
        }
      case UserDetailPage.routeName:
        {
          return _route(routeSettings.arguments as UserDetailPage);
        }
      default:
        {
          return _route(const LandingPage());
        }
    }
  }

  static Route _route(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
