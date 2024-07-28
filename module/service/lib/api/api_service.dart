import 'package:dio/dio.dart';
import 'package:service/model/search_result_model.dart';

final class ApiService {
  //todo generic

  static final ApiService _instance = ApiService._init();

  static ApiService? get instance => _instance;

  late Dio _dio;

  ApiService._init() {
    _dio = Dio();

    print("inti2");
  }

  Future<List<Items>?> fetchSearch(String searchText) async {
    final Response response = await _dio.get(
        "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&key=AIzaSyDS2RDOkWs59Azfyr86Ky4IOlHD3ae0EQM&q=$searchText");
    SearchResultModel parsed = SearchResultModel.fromJson(response.data);
    return parsed.items;
  }
}
