import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/colors/color_app.dart';

class SelectLanguage extends StatelessWidget {
  final bool select;
  final String title;
  final VoidCallback callback;
  final double size;

  const SelectLanguage({
    super.key,
    required this.select,
    required this.title,
    required this.callback,
    this.size = .068,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        select ? AppColors.primaryColor : AppColors.darkGrey;

    Color textColor = select ? AppColors.primaryColor : AppColors.darkGrey;

    TextStyle textStyle = TextStyle(
        fontSize: Get.width * .04,
        color: textColor,
        fontWeight: select ? FontWeight.bold : FontWeight.normal);

    return InkWell(
      onTap: callback,
      child: Container(
        width: double.infinity,
        height: Get.height * size,
        decoration: BoxDecoration(
          border: Border.all(
            color: backgroundColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: Get.width * .06),
            SizedBox(
              height: Get.width * .08,
              width: Get.width * .1,
              child: select
                  ? Icon(
                      Icons.check_circle,
                      color: AppColors.primaryColor,
                      size: Get.width * .08,
                    )
                  : Center(
                    child: Container(
                        height: Get.width * .072,
                        width: Get.width * .072,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.darkGrey),
                          borderRadius: BorderRadius.circular(500),
                        ),
                      ),
                  ),
            ),
            SizedBox(width: Get.width * .04),
            Text(
              capitalizeText(title.tr),
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
