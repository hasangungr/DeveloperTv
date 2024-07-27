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
    final Response response = await _dio.get("");
    SearchResultModel parsed = SearchResultModel.fromJson(response.data);
    return parsed.items;
  }
}
