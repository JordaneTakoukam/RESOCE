import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import '../../core/paths/paths.dart';

class CallButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isPhone;
  const CallButton({
    super.key,
    required this.onTap,
    this.isPhone = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: SizedBox(
        height: Get.width * .12,
        width: Get.width * .12,
        child: Padding(
          padding:
              EdgeInsets.all(isPhone ? Get.width * .035 : Get.width * .026),
          child: Image.asset(
            isPhone ? Chemin.icone.callFlat : Chemin.icone.cameraVideo,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
