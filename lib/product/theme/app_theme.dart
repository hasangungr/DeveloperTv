import 'package:flutter/material.dart';

@immutable
abstract class AppTheme {
  ThemeData get theme;

  Color get scaffoldColor;

  InputDecorationTheme get inputDecorationTheme;
}
