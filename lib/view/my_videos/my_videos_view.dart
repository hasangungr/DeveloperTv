import '../../product/widget/bottom_nav_bar_widgdet.dart';
import 'package:flutter/material.dart';

import '../../core/widget/paddings.dart';
import '../../core/widget/scaffold_with_padding.dart';
import '../../product/widget/list_video_wid.dart';
import 'widget/list_category_wid.dart';

class MyVideosView extends StatelessWidget {
  const MyVideosView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldwithPadding(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSizedBox.paddingHeight(heightValue: 24),
          Expanded(child: ListCategory()),
          // Expanded(flex: 9, child: ListVideo())
        ],
      ),
      bottomNavBar: BottomNavBarWidgdet(currentIndex: 2),
    );
  }
}
