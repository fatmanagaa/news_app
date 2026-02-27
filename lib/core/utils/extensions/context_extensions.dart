
import 'package:flutter/material.dart';




extension ContextExtensions on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;




  //todo:way to use this extension
  // final width = context.width;
  // final height = context.height;
  // final theme = context.theme;
  // final language = context.language;
  //context.language.appLanguage //todo:to access thing inside it

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  // if(context.isDark) ...

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  // context.pushNamed('/details', arguments: 42);

  Future<T?> pushReplacementNamed<T, TO>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushReplacementNamed<T, TO>(routeName, arguments: arguments);
    // context.pushReplacementNamed('/home');
  }
}
