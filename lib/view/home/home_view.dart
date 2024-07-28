import 'package:developer_tv/product/widget/bottom_nav_bar_widgdet.dart';

import '../../core/widget/paddings.dart';
import '../../core/widget/scaffold_with_padding.dart';
import 'widget/story_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldwithPadding(
      bottomNavBar: BottomNavBarWidgdet(currentIndex: 1),
      body: SingleChildScrollView(
        child: Column(children: [
          CustomSizedBox.paddingHeight(heightValue: 24),
          StoryWidget(),
          CustomSizedBox.paddingHeight(heightValue: 10),
          // Expanded(flex: 3, child: SliderWidget()),
          // GridviewCustomWidget(isHorizontal: true),
          // ListVideo(isScrollabel: false)
        ]),
      ),
    );
  }
}
