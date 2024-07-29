import 'package:developer_tv/core/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

Widget? videoPlayerDialog(
    BuildContext context, String videoId, YoutubePlayerController controller) {
  showDialog(
      context: context,
      builder: (
        context,
      ) {
        return Stack(alignment: Alignment.center, children: [
          Container(
            padding: const EdgeInsets.all(24),
            height: context.dynamicHeight(.5),
            width: context.dynamicWidth(.8),
            child: YoutubePlayer(
              controller: controller,
              aspectRatio: 16 / 9,
            ),
          ),
        ]);
      });
  return null;
}
