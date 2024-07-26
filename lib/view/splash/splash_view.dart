import 'package:developer_tv/product/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../product/service/secure_storage.dart';
import '../../product/widget/animation_wid.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

final tokenValue = ValueNotifier<bool>(false);

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen(); // Asenkron yönlendirmeyi başlat
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 4));
    tokenValue.value =
        await SecureStorageService.instance?.storageRead(StorageKeys.token) !=
                null
            ? true
            : false;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!tokenValue.value == true) {
        context.pushNamed(AppRoutes.home);
      } else {
        context.pushNamed(AppRoutes.auth);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [AnimationWid()],
        ),
      ),
    );
  }
}
