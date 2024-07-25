import 'package:developer_tv/product/theme/app_theme.dart';
import 'package:flutter/material.dart';

final class LightTheme extends AppTheme {
  @override
  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
      );

  @override
  Color get scaffoldColor => Colors.grey.shade200;
}
