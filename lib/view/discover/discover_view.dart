import 'package:developer_tv/core/widget/paddings.dart';
import 'package:developer_tv/product/widget/bottom_nav_bar_widgdet.dart';
import 'package:developer_tv/view/discover/discover_cubit.dart';
import 'package:developer_tv/view/discover/widget/search_widget.dart';
import 'package:developer_tv/product/widget/gridview_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widget/scaffold_with_padding.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return BlocProvider(
      create: (context) => DiscoverCubit(),
      child://todo generic
          BlocBuilder<DiscoverCubit, DiscoverState>(builder: (context, state) {
        final discoverCubit = BlocProvider.of<DiscoverCubit>(context);
        return ScaffoldwithPadding(
            bottomNavBar: const BottomNavBarWidgdet(currentIndex: 0),
            body: Column(children: [
              const CustomSizedBox.paddingHeight(heightValue: 24),
              SearchWidget(
                controller: textEditingController,
                onSearch: () {
                  discoverCubit.fetchVideos(textEditingController.text);
                },
              ),
              if (state is DiscoverInitial)
                Container(color: Colors.red, height: 50, width: 50)
              else if (state is DiscoverLoading)
                Container(color: Colors.yellow, height: 50, width: 50)
              else if (state is DiscoverCompleted)
                // Text("data")
                Expanded(child: GridviewCustomWidget(items: state.items ?? []))
              else
                const SizedBox()
            ]));
      }),
    );
  }
}
