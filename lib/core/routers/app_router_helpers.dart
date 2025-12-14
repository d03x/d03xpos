import 'package:dompetku/src/home/screens/home_screen.dart';
import 'package:dompetku/src/qrcode/view/qr_code_screen.dart';
import 'package:dompetku/src/shared/widgets/not_found_widget.dart';
import 'package:flutter/material.dart';
part 'app_route.dart';
class AppRouterHelpers {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static Future<void> goBack() async {
    navigatorKey.currentState!.pop();
  }

  static Future<dynamic> pushNamed(String name, {dynamic arguments}) {
    return navigatorKey.currentState!.pushNamed(name, arguments: arguments);
  }

  static Future<dynamic> pushReplacementNamed(
    String name, {
    dynamic arguments,
  }) {
    return navigatorKey.currentState!.pushReplacementNamed(name, arguments: arguments);
  }

  static Route<dynamic> generate(RouteSettings route) {
    switch (route.name) {
      case AppRoute.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoute.qrcode:
        return MaterialPageRoute(builder: (context) => QrCodeScreen());
      default:
    }

    return MaterialPageRoute(
      builder: (context) => NotFoundWidget(),
    );
  }
}
