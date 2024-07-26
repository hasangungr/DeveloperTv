import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:developer_tv/product/route/app_route.dart';

class BottomNavBarWidgdet extends StatelessWidget {
  const BottomNavBarWidgdet({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        if (currentIndex == value) {
          return;
        } else {
          switch (value) {
            case 0:
              context.pushReplacementNamed(AppRoutes.discover);
            case 1:
              context.pushReplacementNamed(AppRoutes.home);
            case 2:
              context.pushReplacementNamed(AppRoutes.discover);

              break;
            default:
          }
        }
      },
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Discover"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "My Videos")
      ],
    );
  }
}
