import 'package:flutter/material.dart';
import 'package:tap_review/widgets/pages/main_page.dart';

import '../widgets/pages/menu_page.dart';
import '../widgets/pages/review_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String reviewPage = '/reviewpage';
  static const String menuPage = '/menupage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );

      case reviewPage:
        return MaterialPageRoute(
          builder: (context) => ReviewPage(),
        );

      case menuPage:
        return MaterialPageRoute(
          builder: (context) => MenuPage(),
        );

      default:
        throw FormatException('Route not found! check route again!');
    }
  }
}
