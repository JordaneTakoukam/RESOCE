import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/logo/logo_app_bar.dart';

PreferredSizeWidget appBarHomeNotActivated({
  required String titleAppbar,
  required String sexe,
  required String username,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: Get.height * .085,
    elevation: .5,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    automaticallyImplyLeading: false,
    titleSpacing: 0,
    title: Padding(
      padding: EdgeInsets.only(left: Get.width * .035, right: Get.width * .0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height * .04),
          const Row(
            children: [
              LogoAppbar(),
              Spacer(),
            ],
          ),
          Text(
            "${capitalizeText(titleAppbar.tr)} ${sexe == 'm' ? 'mister'.tr : sexe == 'f' ? 'madame'.tr : 'mister'.tr} ${capitalizeText(username)} !",
            style: TextStyle(
              color: Colors.black,
              fontSize: Get.width * .037,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: Get.height * .05),
        ],
      ),
    ),
  );
}
