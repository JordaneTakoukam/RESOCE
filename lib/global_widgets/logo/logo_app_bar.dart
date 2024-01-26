import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/.config.dart';

class LogoAppbar extends StatelessWidget {
  const LogoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppConfig.appName,
          style: TextStyle(
            color: Colors.white,
            fontSize: Get.width * .03,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
