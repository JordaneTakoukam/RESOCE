import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/values/colors/color_app.dart';

class AppBarIcon extends StatelessWidget {
  final VoidCallback ontap;
  final String icone;
  const AppBarIcon({
    super.key,
    required this.icone,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          height: Get.width * .085,
          width: Get.width * .09,
          child: Padding(
            padding: EdgeInsets.all(Get.width * .02),
            child: Image.asset(
              icone,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
