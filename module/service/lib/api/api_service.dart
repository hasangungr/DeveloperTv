import 'package:dio/dio.dart';

import '../env/app_enviroment.dart';
import '../model/video_list_model.dart';
import '../model/video_model.dart';

final class ApiService {
  //todo generic

  static final ApiService _instance = ApiService._init();

  static ApiService? get instance => _instance;

  late Dio _dio;

  ApiService._init() {
    _dio = Dio();

    print("inti2");
  }

  Future<List<MediaItem>?> fetchSearch(String searchText) async {
    final Response response = await _dio.get(
        "${AppEnviroment.endPoint}search?part=snippet&type=video&key=${AppEnviroment.apiKey}&q=$searchText");
    VideoListModel parsed = VideoListModel.fromJson(response.data);

    return parsed.items;
  }

  Future<List<MediaItem>?> fetchPlaylist(String playlistId) async {
    final Response response = await _dio.get(
        "${AppEnviroment.endPoint}playlistItems?part=snippet%2CcontentDetails&maxResults=25&playlistId=$playlistId&key=${AppEnviroment.apiKey}");
    VideoListModel parsed = VideoListModel.fromJson(response.data);

    return parsed.items;
  }
}
