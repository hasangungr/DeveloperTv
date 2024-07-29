import 'package:flutter/foundation.dart';
import 'package:service/model/base_model.dart';

 

@immutable
final class MediaItem extends BaseModel {
  final String title;
  final String? description;
  final String? url;

  MediaItem({
    required String id,
    required this.title,
    this.description,
    this.url,
  }) : super(id);

  factory MediaItem.fromJson(Map<String, dynamic> json) {
    String id;
    if (json.containsKey('id') && json['id'] is Map) {
      id = json['id']["videoId"] as String;
    } else if (json.containsKey('snippet') && json['snippet'].containsKey('resourceId')) {
      id = json['snippet']['resourceId']['videoId'] as String;
    } else {
      throw ArgumentError("JSON does not contain valid id fields");
    }

    return MediaItem(
      id: id,
      title: json['snippet']['title'] as String,
      description: json['snippet']['description'] as String?,
      url: (json['snippet']['thumbnails'] != null &&
              json['snippet']['thumbnails']['default'] != null)
          ? json['snippet']['thumbnails']['default']["url"] as String?
          : null,
    );
  }
}
