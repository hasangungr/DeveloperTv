// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:developer_tv/core/context_extension.dart';
import 'package:service/service.dart';

import '../../core/decoration/decoration.dart';
import '../../core/widget/paddings.dart';

class ListVideo extends StatelessWidget {
  const ListVideo({super.key, this.isScrollabel = true, required this.items});

  final bool isScrollabel;

  final List<Items> items;

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
          );
        },
      ),
    );
  }
}

class ListedVideo extends StatelessWidget {
  const ListedVideo({super.key, required this.snippet});

  final Snippet? snippet;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(.17),
      decoration: CustomDecoration.containerDecoration,
      child: Row(
        children: [
          Container(
              width: context.dynamicWidth(.3),
              decoration: BoxDecoration(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(snippet?.title ?? '',
                      style: CustomDecoration.bodyLargeElipsis(context)),
                  Text("Cem Yilmaz - Stand Up", //todo
                      style: context.appTextTheme.labelLarge
                          ?.copyWith(color: Colors.grey)),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bookmark_border)))
        ],
      ),
    );
  }
}
