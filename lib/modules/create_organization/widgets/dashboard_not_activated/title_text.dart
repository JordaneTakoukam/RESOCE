import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      capitalizeText(title.tr),
      style: TextStyle(
        color: AppColors.textFoncer,
        fontSize: Get.width * .035,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
