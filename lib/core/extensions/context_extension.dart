import 'package:flutter/material.dart';
import 'package:store_app/core/styles/themes/color_extensions.dart';

extension context on BuildContext {
  //Colors
  MyColor get color => Theme.of(this).extension<MyColor>()!;
  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
