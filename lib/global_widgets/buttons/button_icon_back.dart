import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';

class ButtonRetour extends StatelessWidget {
  const ButtonRetour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.height * .0),
      child: InkWell(
        onTap: () => Get.back(),
        borderRadius: BorderRadius.circular(500),
        child: Container(
          width: Get.width * .12,
          height: Get.width * .12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
          ),
          child: Center(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: Get.width * .06,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonRetourAuth extends StatelessWidget {
  final Color iconeColor;
  const ButtonRetourAuth({
    Key? key,
    this.iconeColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.height * .015),
      child: InkWell(
        onTap: () => Get.back(),
        borderRadius: BorderRadius.circular(500),
        child: Container(
          width: Get.width * .12,
          height: Get.width * .12,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(.15),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.arrow_back,
              color: iconeColor,
              size: Get.width * .05,
            ),
          ),
        ),
      ),
    );
  }
}
