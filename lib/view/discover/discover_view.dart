import 'package:developer_tv/core/widget/paddings.dart';
import 'package:developer_tv/product/widget/bottom_nav_bar_widgdet.dart';
import 'package:developer_tv/view/discover/widget/search_widget.dart';
import 'package:developer_tv/product/widget/gridview_custom_widget.dart';
import 'package:flutter/material.dart';

import '../../core/widget/scaffold_with_padding.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldwithPadding(
        bottomNavBar: BottomNavBarWidgdet(currentIndex: 0),
        body: Column(
          children: [
            CustomSizedBox.paddingHeight(heightValue: 24),
            SearchWidget(),
            Expanded(child: GridviewCustomWidget())
          ],
        ));
  }
}
