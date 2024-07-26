import 'package:developer_tv/product/theme/app_theme.dart';
import 'package:flutter/material.dart';

final class DarkTheme implements AppTheme {
  @override
  ThemeData get theme => ThemeData(scaffoldBackgroundColor: scaffoldColor);

  @override
  Color get scaffoldColor => Colors.grey.shade800;

  @override
  InputDecorationTheme get inputDecorationTheme => throw UnimplementedError();
}
