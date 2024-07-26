import 'package:developer_tv/core/context_extension.dart';
import 'package:developer_tv/core/decoration/decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../core/widget/paddings.dart';

class GridviewCustomWidget extends StatelessWidget {
  const GridviewCustomWidget({
    super.key,
    this.isHorizontal = false,
  });
  final bool isHorizontal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.dynamicWidth(1),
        height: context.dynamicHeight(.35),
        child: GridView.custom(
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
            childCount: 6,
            (context, index) => Container(
              margin: const ConstEdgeInsets.padding4(),
              decoration: CustomDecoration.containerDecoration,
              child: Text(index.toString()),
            ),
          ),
        ));
  }
}
