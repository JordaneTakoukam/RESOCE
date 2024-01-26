import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';

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
      borderRadius: BorderRadius.circular(10),
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.075),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          height: Get.width * .095,
          width: Get.width * .095,
          child: Padding(
            padding: EdgeInsets.all(Get.width * .023),
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
