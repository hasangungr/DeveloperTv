import 'package:developer_tv/product/widget/bottom_nav_bar_widgdet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widget/scaffold_with_padding.dart';
import '../../product/widget/gridview_custom_widget.dart';
import 'home_cubit.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context),
      child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        final homeCubit = BlocProvider.of<HomeCubit>(context);

        if (state is HomeInitial) {
          return const SizedBox();
        } else if (state is HomeLoading) {
          return const LinearProgressIndicator();
        } else if (state is HomeCompleted) {
          return ScaffoldwithPadding(
            bottomNavBar: const BottomNavBarWidgdet(currentIndex: 1),
            body: GridviewCustomWidget(
              items: state.items ?? [],
              playerCubit: homeCubit,
            ),
          );
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
