import 'package:developer_tv/product/widget/bottom_nav_bar_widgdet.dart';

import '../../core/widget/paddings.dart';
import 'widget/gridview_custom_widget.dart';
import 'widget/slider_widget.dart';
import 'widget/story_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            Expanded(flex: 2, child: StoryWidget()),
            CustomSizedBox.paddingHeight(heightValue: 10),
            Expanded(flex: 3, child: SliderWidget()),
            Expanded(flex: 5, child: GridviewCustomWidget())
          ]),
        ),
        bottomNavigationBar: BottomNavBarWidgdet());
  }
}
