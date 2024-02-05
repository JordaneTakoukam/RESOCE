import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';

class EmptyChatPage extends StatelessWidget {
  const EmptyChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.width * .1),
      child: Center(
        child: Text(
          capitalizeText('no_discussions'.tr),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.textGray,
            fontSize: Get.width * .035,
          ),
        ),
      ),
    );
  }
}
