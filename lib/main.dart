import 'product/route/app_route.dart';
import 'product/theme/dark_theme.dart';
import 'product/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Developer Tv ',
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,
    );
  }
}
