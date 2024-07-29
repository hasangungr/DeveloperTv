import 'package:developer_tv/product/widget/bottom_nav_bar_widgdet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widget/paddings.dart';
import '../../core/widget/scaffold_with_padding.dart';
import '../../product/widget/gridview_custom_widget.dart';
import 'home_cubit.dart';
import 'widget/story_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context),
      child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        if (state is HomeInitial) {
          return const SizedBox();
        } else if (state is HomeLoading) {
          return const LinearProgressIndicator();
        } else if (state is HomeCompleted) {
          return ScaffoldwithPadding(
            bottomNavBar: const BottomNavBarWidgdet(currentIndex: 1),
            body: SingleChildScrollView(
              child: Column(children: [
                const CustomSizedBox.paddingHeight(heightValue: 24),
                const StoryWidget(),
                const CustomSizedBox.paddingHeight(heightValue: 10),
                // Expanded(flex: 3, child: SliderWidget()),
                GridviewCustomWidget(
                    isHorizontal: false, items: state.items ?? []),
                //  ListVideo(isScrollabel: false,items: [],playerCubit: ,)
              ]),
            ),
          );
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
