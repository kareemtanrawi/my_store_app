import 'package:flutter/material.dart';
import 'package:store_app/core/language/app_localization.dart';
import 'package:store_app/core/styles/themes/color_extensions.dart';

extension context on BuildContext {
  //Colors
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  //Languages
  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  //style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  // Navigation
  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
