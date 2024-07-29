import 'package:flutter/foundation.dart';

import 'video_model.dart';

@immutable
final class VideoListModel {
  final List<MediaItem>? items;

  const VideoListModel({
    this.items,
  });

  factory VideoListModel.fromJson(Map<String, dynamic> json) {
    return VideoListModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => MediaItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}



// class PageInfo {
//   int? totalResults;
//   int? resultsPerPage;

//   PageInfo({
//     this.totalResults,
//     this.resultsPerPage,
//   });

//   factory PageInfo.fromJson(Map<String, dynamic> json) {
//     return PageInfo(
//       totalResults: json['totalResults'] as int?,
//       resultsPerPage: json['resultsPerPage'] as int?,
//     );
//   }
// }
      // pageInfo: json['pageInfo'] == null
      //     ? null
      //     : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),