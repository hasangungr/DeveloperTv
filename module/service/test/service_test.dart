import 'package:flutter_test/flutter_test.dart';
import 'package:service/api/api_service.dart';

void main() {
  test('adds one to input values', () async {
    await ApiService.instance?.fetchSearch("gs");
  });
}
