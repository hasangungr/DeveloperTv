import 'package:flutter/material.dart';

import '../../../core/widget/paddings.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => CustomPaddings.padding8,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Chip(label: Text("Cem yilmaz"));
      },
    );
  }
}
