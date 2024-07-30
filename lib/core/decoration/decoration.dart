import 'package:developer_tv/core/context_extension.dart';
import 'package:flutter/material.dart';

final class CustomDecoration {
  const CustomDecoration._();

  static final containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.red),
  );

  static TextStyle? bodyLargeElipsis(BuildContext context) =>
      context.appTextTheme.bodyLarge?.copyWith(overflow: TextOverflow.ellipsis);
}
