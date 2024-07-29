import 'package:flutter/material.dart';

import 'package:developer_tv/core/widget/paddings.dart';

class ScaffoldwithPadding extends StatelessWidget {
  const ScaffoldwithPadding({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavBar,
  });

  final PreferredSize? appBar;
  final Widget? body;
  final Widget? bottomNavBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Tv"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(padding: const ConstEdgeInsets.padding16(), child: body),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
