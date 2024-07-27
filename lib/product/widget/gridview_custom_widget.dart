import 'package:developer_tv/core/context_extension.dart';
import 'package:developer_tv/core/decoration/decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:service/service.dart';

import '../../core/widget/paddings.dart';

class GridviewCustomWidget extends StatelessWidget {
  const GridviewCustomWidget({
    super.key,
    this.isHorizontal = false,
    required this.items,
  });
  final bool isHorizontal;
  final List<Items> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.dynamicWidth(1),
        height: context.dynamicHeight(.35),
        child: GridView.custom(
          shrinkWrap: true,
          scrollDirection:
              isHorizontal == false ? Axis.vertical : Axis.horizontal,
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
            (context, index) => Container(
                alignment: Alignment.bottomLeft,
                margin: const ConstEdgeInsets.padding4(),
                decoration: CustomDecoration.containerDecoration.copyWith(
                    image: DecorationImage(
                        image: NetworkImage(
                          items[index]
                              .snippet!
                              .thumbnails!//todo null safety
                              .defaultProperty!
                              .url!,
                        ),
                        fit: BoxFit.cover)),
                child: Text(
                  items[index].snippet?.title ?? '',
                  style: context.appTextTheme.bodyLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
        ));
  }
}
