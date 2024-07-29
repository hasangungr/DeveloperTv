// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:service/service.dart';

import 'package:developer_tv/core/context_extension.dart';
import 'package:developer_tv/core/decoration/decoration.dart';

import '../../core/widget/paddings.dart';
import '../base/base_player.dart';

class GridviewCustomWidget extends StatelessWidget {
  const GridviewCustomWidget({
    super.key,
    required this.items,
    required this.playerCubit,
  });

  final List<MediaItem> items;
  final BasePlayer playerCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.dynamicWidth(1),
        height: context.dynamicHeight(1),
        child: GridView.custom(
          shrinkWrap: true,
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              const QuiltedGridTile(2, 2),
              const QuiltedGridTile(3, 2),
              const QuiltedGridTile(3, 2),
              const QuiltedGridTile(2, 2),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: items.length,
              (context, index) => InkWell(
                    onTap: () => playerCubit.onVideoPlayer(items[index].id),
                    child: Container(
                        padding: const ConstEdgeInsets.padding4(),
                        alignment: Alignment.bottomLeft,
                        margin: const ConstEdgeInsets.padding4(),
                        decoration:
                            CustomDecoration.containerDecoration.copyWith(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      items[index].url!,
                                    ),
                                    fit: BoxFit.cover)),
                        child: Text(
                          items[index].title,
                          style: context.appTextTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                        )),
                  )),
        ));
  }
}
