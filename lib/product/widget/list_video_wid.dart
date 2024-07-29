import 'package:developer_tv/product/base/base_player.dart';
import 'package:flutter/material.dart';

import '../../core/context_extension.dart';
import 'package:service/service.dart';

import '../../core/decoration/decoration.dart';
import '../../core/widget/paddings.dart';

class ListVideo extends StatelessWidget {
  const ListVideo({
    super.key,
    this.isScrollabel = true,
    required this.items,
    required this.playerCubit,
  });

  final bool isScrollabel;

  final List<MediaItem> items;
  final BasePlayer playerCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(1),
      height: context.dynamicHeight(1),
      child: ListView.separated(
        physics:
            isScrollabel == true ? null : const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        separatorBuilder: (context, index) =>
            const CustomSizedBox.paddingHeight(heightValue: 24),
        itemBuilder: (context, index) {
          return ListedVideo(
            video: items[index],
            playerDialog: () => playerCubit.onVideoPlayer(
              items[index].id,
            ),
          );
        },
      ),
    );
  }
}

class ListedVideo extends StatelessWidget {
  const ListedVideo({
    super.key,
    required this.video,
    required this.playerDialog,
  }) : super();

  final MediaItem? video;
  final Function() playerDialog;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: playerDialog,
      child: Container(
        height: context.dynamicHeight(.12),
        decoration: CustomDecoration.containerDecoration,
        child: Row(
          children: [
            video?.url != null
                ? Container(
                    width: context.dynamicWidth(.3),
                    decoration: CustomDecoration.containerDecoration.copyWith(
                        image: DecorationImage(
                            image: NetworkImage(
                              video!.url!,
                            ),
                            fit: BoxFit.cover)))
                : SizedBox(height: context.dynamicHeight(.12)),
            Expanded(
              child: Padding(
                padding: const ConstEdgeInsets.padding8(),
                child: Text(video?.title ?? '',
                    style: CustomDecoration.bodyLargeElipsis(context)),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.bookmark_border)))
          ],
        ),
      ),
    );
  }
}
