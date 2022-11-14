// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tap_review/widgets/pages/main_page.dart';

import '../widgets/pages/menu_detail.dart';
import '../widgets/pages/menu_order_page.dart';
import '../widgets/pages/menu_page.dart';
import '../widgets/pages/order_success_page.dart';
import '../widgets/pages/review_page.dart';
import '../widgets/pages/review_success_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String reviewPage = '/reviewpage';
  static const String reviewSuccessPage = '/reviewsuccesspage';
  static const String menuPage = '/menupage';
  static const String menuDetailPage = '/menudetailpage';
  static const String menuOrderPage = '/menuorderpage';
  static const String orderSuccessPage = '/ordersuccesspage';

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

      case reviewSuccessPage:
        return MaterialPageRoute(
          builder: (context) => ReviewSuccessPage(),
        );

      case menuPage:
        return MaterialPageRoute(
          builder: (context) => MenuPage(),
        );

      case menuDetailPage:
        return MaterialPageRoute(
          builder: (context) => MenuDetailPage(),
        );

      case menuOrderPage:
        return MaterialPageRoute(
          builder: (context) => MenuOrderPage(),
        );

      case orderSuccessPage:
        return MaterialPageRoute(
          builder: (context) => OrderSuccessPage(),
        );

      default:
        throw FormatException('Route not found! check route again!');
    }
  }
}
