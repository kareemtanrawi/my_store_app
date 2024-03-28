import 'package:flutter/material.dart';
import 'package:store_app/core/common/screens/under_build_screen.dart';
import 'package:store_app/core/routes/base_route.dart';
import 'package:store_app/test_one_screen.dart';
import 'package:store_app/test_two_screen.dart';

class AppRoutes {
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final argc = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: const TestOneScreen());
      case testTwo:
        return BaseRoute(page: const TestTowScreen());
      default:
        return BaseRoute(page: const PageUnderBuild());
    }
  }
}
