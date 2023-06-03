import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/src/presentation/home/home.dart';
import 'package:moniepoint_test/src/presentation/home/product_detail.dart';

class Routes {
  static const String home = '/';
  static const String detials = '/details';

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return pageRoute(
          settings: settings,
          widget: const Home(),
        );
      case detials:
        return pageRoute(
          settings: settings,
          widget: const ProductDetails(),
        );
      default:
        return pageRoute(
          settings: settings,
          widget: const Scaffold(),
        );
    }
  }

  Route<dynamic> pageRoute({
    required RouteSettings settings,
    required Widget widget,
  }) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (_) => widget,
        settings: settings,
        fullscreenDialog: true,
      );
    } else {
      return MaterialPageRoute(
        builder: (_) => widget,
        settings: settings,
        fullscreenDialog: true,
      );
    }
  }
}
