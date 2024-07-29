import 'package:service/env/app_env.dart';

import 'i_config.dart';

final class AppEnviroment {
  AppEnviroment.init() {
    _config = AppEnv();
  }

  static late final IAppConfig _config;

  static String get endPoint => _config.endPoint;
  static String get apiKey => _config.apiKey;
}
