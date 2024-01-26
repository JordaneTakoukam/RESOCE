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
          AppConfig.appNameMinuscule,
          style: TextStyle(
            color: const Color.fromARGB(255, 145, 144, 144),
            fontSize: Get.width * .05,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
