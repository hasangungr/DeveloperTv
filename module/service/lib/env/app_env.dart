import 'package:envied/envied.dart';
import 'i_config.dart';

part 'app_env.g.dart';

@Envied(path: 'assets/.env', obfuscate: true)
final class AppEnv implements IAppConfig {
  @EnviedField(varName: 'END_POINT')
  static final String _endPoint = _AppEnv._endPoint;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _AppEnv._apiKey;

  @override
  String get endPoint => _endPoint;

  @override
  String get apiKey => _apiKey;
}