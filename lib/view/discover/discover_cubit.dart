import 'package:developer_tv/product/base/base_player.dart';
import 'package:developer_tv/product/widget/video_player_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service/service.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

part 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> implements BasePlayer {
  DiscoverCubit(this.context) : super(DiscoverInitial());

  late YoutubePlayerController controller;

  final BuildContext context;

  Future<void> fetchVideos(String searchText) async {
    emit(DiscoverLoading(false));
    final items = await ApiService.instance?.fetchSearch(searchText);
    emit(DiscoverLoading(true));

    emit(DiscoverCompleted(
      items: items ?? [],
    ));
  }

  @override
  void onVideoPlayer(String videoId) {
    controller = YoutubePlayerController.fromVideoId(
        videoId: videoId,
        autoPlay: true,
        params: const YoutubePlayerParams(
          playsInline: false,
        ));
    videoPlayerDialog(context, videoId, controller);
  }
}
