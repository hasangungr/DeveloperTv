import 'package:developer_tv/product/base/base_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service/service.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../product/widget/video_player_dialog.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> implements BasePlayer {
  HomeCubit(this.context) : super(HomeInitial()) {
    fetchPlayList();
  }

  late YoutubePlayerController controller;

  final BuildContext context;

  Future<void> fetchPlayList() async {
    emit(HomeLoading(false));
    List<MediaItem> items =
        await ApiService.instance?.fetchPlaylist("PLBCF2DAC6FFB574DE") ?? [];
    emit(HomeLoading(true));

    items.removeWhere((e) => e.url == null);

    emit(HomeCompleted(items: items));
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
