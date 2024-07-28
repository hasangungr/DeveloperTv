import 'package:flutter/material.dart';

import 'package:developer_tv/core/context_extension.dart';
import 'package:service/service.dart';

import '../../core/decoration/decoration.dart';
import '../../core/widget/paddings.dart';
import '../../view/discover/discover_cubit.dart';

class ListVideo extends StatelessWidget {
  const ListVideo({
    super.key,
    this.isScrollabel = true,
    required this.items,
    required this.playerCubit,
  });

  final bool isScrollabel;

  final List<Items> items;
  final PlayerState playerCubit;

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
            snippet: items[index].snippet,
            playerDialog: () =>
                playerCubit.voidVideoPlayer(context, items[index].id.videoId!),
          );
        },
      ),
    );
  }
}

class ListedVideo extends StatelessWidget {
  const ListedVideo({
    super.key,
    required this.snippet,
    required this.playerDialog,
  }) : super();

  final Snippet? snippet;
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
            Container(
                width: context.dynamicWidth(.3),
                decoration: CustomDecoration.containerDecoration.copyWith(
                    image: DecorationImage(
                        image: NetworkImage(
                          snippet!
                              .thumbnails! //todo null safety
                              .defaultProperty!
                              .url!,
                        ),
                        fit: BoxFit.cover))),
            Expanded(
              child: Padding(
                padding: const ConstEdgeInsets.padding8(),
                child: Text(snippet?.title ?? '',
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
