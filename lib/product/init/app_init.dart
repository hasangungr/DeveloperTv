import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service/env/app_enviroment.dart';

//Init Process
@immutable
final class AppInit {
  const AppInit._();
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized(); //?

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); //?

    AppEnviroment.init();
  }
}
