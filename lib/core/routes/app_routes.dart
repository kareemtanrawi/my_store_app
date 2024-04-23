import 'package:flutter/material.dart';
import 'package:store_app/core/common/screens/under_build_screen.dart';
import 'package:store_app/core/routes/base_route.dart';
import 'package:store_app/features/auth/presentation/screens/login_screen.dart';

class AppRoutes {
  static const String login = 'login';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final argc = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(page: const LoginScreen());
      default:
        return BaseRoute(page: const PageUnderBuild());
    }
  }
}
