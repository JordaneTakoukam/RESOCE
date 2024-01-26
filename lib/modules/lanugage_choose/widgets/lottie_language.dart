import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:resoce/core/paths/paths.dart';


class LottieLanguage extends StatelessWidget {
  const LottieLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      Chemin.lottie.chooseLanguage,
      repeat: true,
      width: Get.width * .5,
      height: Get.width * .5,
      fit: BoxFit.fill,
    );
  }
}
