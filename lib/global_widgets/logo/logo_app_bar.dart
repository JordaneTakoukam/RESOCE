import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/.config.dart';
import 'package:resoce/core/colors/color_app.dart';

class LogoAppbar extends StatelessWidget {
  const LogoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          AppConfig.appNameMinuscule,
          style: TextStyle(
            // color: const Color.fromARGB(255, 145, 144, 144),
            color: AppColors.primaryColor,
            fontSize: Get.width * .05,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(width: Get.width * .01),
        Padding(
          padding: EdgeInsets.only(bottom: Get.height * .002),
          child: Text(
            'Business',
            style: TextStyle(
              // color: const Color.fromARGB(255, 145, 144, 144),
              color: AppColors.primaryColor,
              fontSize: Get.width * .03,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
