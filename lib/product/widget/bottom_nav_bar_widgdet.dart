import 'package:flutter/material.dart';

class BottomNavBarWidgdet extends StatelessWidget {
  const BottomNavBarWidgdet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Discover"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "My Videos")
      ],
    );
  }
}
