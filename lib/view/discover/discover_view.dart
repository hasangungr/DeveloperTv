import '../../core/widget/paddings.dart';
import '../../product/widget/bottom_nav_bar_widgdet.dart';
import '../../product/widget/list_video_wid.dart';
import 'discover_cubit.dart';
import 'widget/search_widget.dart';
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
      child:
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
              const CustomSizedBox.paddingHeight(heightValue: 12),
              if (state is DiscoverInitial)
                const SizedBox()
              else if (state is DiscoverLoading)
                const LinearProgressIndicator()
              else if (state is DiscoverCompleted)
                Expanded(
                    child: ListVideo(
                  items: state.items ?? [],
                  playerCubit: discoverCubit,
                ))
              else
                const SizedBox()
            ]));
      }),
    );
  }
}
