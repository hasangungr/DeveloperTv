import 'package:dio/dio.dart';
 
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
        "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&key=&q=$searchText");
    VideoListModel parsed = VideoListModel.fromJson(response.data);
    print(parsed.items![0].id);
    return parsed.items;
  }

  fetchPlaylist(String playlistId) async {
    final Response response = await _dio.get(
        "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=25&playlistId=$playlistId&key=");
    VideoListModel parsed = VideoListModel.fromJson(response.data);
    print(parsed.items![0].id);
    return parsed.items;
  }
}
