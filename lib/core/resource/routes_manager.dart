import 'package:flutter/material.dart';
import 'package:untitled/core/resource/strings_manager.dart';
import 'package:untitled/features/main_view/main_view.dart';

import '../../features/login/view/login_view.dart';
import '../../features/recent_transaction/view/recent_transaction.dart';

class Routes {
  static const String loginRoute = "/";
  static const String mainRoute = "/main";
  static const String recentTransactionRoute = "/recentTransaction";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.recentTransactionRoute:
        return MaterialPageRoute(builder: (_) => const RecentTransaction());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
