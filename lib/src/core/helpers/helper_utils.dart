import 'package:flutter/material.dart';

import '../errors/error.dart';
import '../errors/error_handler.dart';

class NavigatorHelper {
  final GlobalKey<NavigatorState> kNavKey;
  final GlobalKey<ScaffoldMessengerState> kscaffoldMessengerKey;

  NavigatorHelper()
      : kNavKey = GlobalKey<NavigatorState>(),
        kscaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  void pop() {
    return kNavKey.currentState!.pop();
  }

  Future<dynamic> toName({required String name, Object? arguments}) {
    return kNavKey.currentState!.pushNamed(name, arguments: arguments);
  }

  Future<dynamic> toNameReplacement({required String name, Object? arguments}) {
    return kNavKey.currentState!
        .pushReplacementNamed(name, arguments: arguments);
  }

  Future<dynamic> toNameRemove({required String name, Object? arguments}) {
    return kNavKey.currentState!.pushNamedAndRemoveUntil(
      name,
      arguments: arguments,
      (route) => false,
    );
  }

  void snackBar(SnackBar bar) {
    kscaffoldMessengerKey.currentState!.showSnackBar(bar);
  }
}

class Guide {
  static void back() {
    return NavigatorHelper().pop();
  }

  static Future<dynamic> to({required String name, Object? arguments}) {
    return NavigatorHelper().toName(name: name, arguments: arguments);
  }

  static Future<dynamic> toReplacment(
      {required String name, Object? arguments}) {
    return NavigatorHelper()
        .toNameReplacement(name: name, arguments: arguments);
  }

  static Future<dynamic> toRemove({required String name, Object? arguments}) {
    return NavigatorHelper().toNameRemove(name: name, arguments: arguments);
  }

  static void showSnack(SnackBar snack) {
    return NavigatorHelper().snackBar(snack);
  }

  static String failureToMessage(Failure failure) {
    if (failure is NetworkFailure) {
      return ResponseException.getErrorMessage(failure.responseException);
    }
    if (failure is CacheFailure) {
      return failure.message;
    } else {
      return 'Unexpected error';
    }
  }

  static bool isDark(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return true;
    }
    return false;
  }

  static String capitalize(String text) {
    if (text.isEmpty) {
      return text;
    }

    return text[0].toUpperCase() + text.substring(1);
  }
}
