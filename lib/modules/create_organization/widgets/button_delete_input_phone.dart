import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';

class DeletePhoneInput extends StatelessWidget {
  final VoidCallback ontap;
  const DeletePhoneInput({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      splashRadius: .01,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      color: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: ontap,
      icon: Container(
        margin: EdgeInsets.only(bottom: Get.height * .01),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(Get.width * .025),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
