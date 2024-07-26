import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWid extends StatelessWidget {
  const AnimationWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.network("https://lottie.host/97d6551a-4c64-4d90-be52-ba58e23cf9d4/1sZdCnCCrG.json");
  }
}
