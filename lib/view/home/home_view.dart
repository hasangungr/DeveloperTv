import 'package:developer_tv/product/widget/bottom_nav_bar_widgdet.dart';

import '../../core/widget/paddings.dart';
import '../../core/widget/scaffold_with_padding.dart';
import '../../product/widget/gridview_custom_widget.dart';
import 'widget/slider_widget.dart';
import 'widget/story_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldwithPadding(
      bottomNavBar: BottomNavBarWidgdet(currentIndex: 1),
      body: Column(children: [
        Expanded(flex: 2, child: StoryWidget()),
        CustomSizedBox.paddingHeight(heightValue: 10),
        Expanded(flex: 3, child: SliderWidget()),
        Expanded(flex: 5, child: GridviewCustomWidget())
      ]),
    );
  }
}
