import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/modules/dashboard_menu_page/controller.dart';

class ModelIconBottomBar extends GetView<DashboardController> {
  final String titre;
  final int index;
  final String iconeFlat;
  final String iconeOutline;

  final bool rotated;
  final double width;

  const ModelIconBottomBar({
    Key? key,
    required this.titre,
    required this.index,
    required this.iconeFlat,
    required this.iconeOutline,
    this.rotated = false,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Obx(
      () => Container(
        color: Colors.white,
        height: size.width * .15,
        width: Get.width * width,
        child: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateColor.resolveWith(
              (states) => AppColors.clickColor,
            ),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            // Add the border with 'side' property
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
          ),
          onPressed: () {
            controller.updatePage(index);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 7),
              //
              // rotated == false
              //     ?
              Image.asset(
                controller.pageIndex.value == index ? iconeFlat : iconeOutline,
                height: index == 0 ? 23 : 25,
                color: controller.pageIndex.value == index
                    ? AppColors.primaryColor
                    : AppColors.unSelectIcon,
              ),

              // : RotatedBox(
              //     quarterTurns: 3,
              //     child: Image.asset(
              //       image,
              //       height: 25,
              //       color: controller.pageIndex.value == index
              //           ? AppColors.primaryColor
              //           : AppColors.unSelectIcon,
              //     ),
              //   ),
              //

              //
              const Spacer(),
              Obx(
                () => Text(
                  capitalizeText(titre.tr),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: controller.pageIndex.value == index
                        ? AppColors.primaryColor
                        : AppColors.unSelectIcon,
                  ),
                ),
              ),
              const SizedBox(height: 6)
            ],
          ),
        ),
      ),
    );
  }
}
