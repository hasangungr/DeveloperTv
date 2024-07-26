import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final class SecureStorageService {
  static final SecureStorageService _instance = SecureStorageService._init();

  static SecureStorageService? get instance => _instance;

  late FlutterSecureStorage _storage;

  SecureStorageService._init() {
    _storage = const FlutterSecureStorage();
    if (kDebugMode) {
      print("Storage init");
    }
  }
  Future<void> storageWrite(String key, String value) async =>
      await _storage.write(key: key, value: value);

  Future<String?> storageRead(String key) async =>
      await _storage.read(key: key);

  Future<void> storageDelete(String key) async =>
      await _storage.delete(key: key);

  Future<void> get storageDeleteAll async => await _storage.deleteAll();
  Future<Map<String, String>> get allStorageValues async =>
      await _storage.readAll();
}

sealed class StorageKeys {
  StorageKeys._();

  static const String token = "token";
}
