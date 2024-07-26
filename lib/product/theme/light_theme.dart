import 'package:developer_tv/product/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../core/widget/paddings.dart';

final class LightTheme extends AppTheme {
  @override
  ThemeData get theme => ThemeData(
      scaffoldBackgroundColor: scaffoldColor,
      inputDecorationTheme: inputDecorationTheme);

  @override
  Color get scaffoldColor => Colors.grey.shade200;

  @override
  InputDecorationTheme get inputDecorationTheme => const InputDecorationTheme(
      border: InputBorder.none, contentPadding: ConstEdgeInsets.padding8());
}
