import 'package:flutter/material.dart';
import 'package:news_app/main.dart';

class Constants {
  static var mediaQuery = MediaQuery.sizeOf(
    navigatorKey.currentState!.context,
  );
  static var theme = Theme.of(
    navigatorKey.currentState!.context,
  );
}
