import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/global_widgets/buttons/app_bar_icon.dart';
import 'package:resoce/global_widgets/logo/logo_app_bar.dart';

PreferredSizeWidget appBarHome({required String titleAppbar}) {
  return AppBar(
    backgroundColor: AppColors.primaryColor,
    toolbarHeight: Get.height * .07,
    elevation: .5,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    automaticallyImplyLeading: false,
        titleSpacing: 0,

    title: Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width *.035),
      child: Row(
        children: [
          const LogoAppbar(),
          SizedBox(width: Get.width * .2),
          Padding(
            padding: EdgeInsets.only(
              left: titleAppbar == 'chats' ? 0 : Get.width * .0645,
            ),
            child: Text(
              capitalizeText(titleAppbar.tr),
              style: TextStyle(
                color: Colors.white,
                fontSize: Get.width * .042,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          titleAppbar == 'chats'
              ? Row(
                  children: [
                    AppBarIcon(
                      icone: Chemin.icone.camera,
                      ontap: () {},
                    ),
                    SizedBox(width: Get.width * .02),
                    AppBarIcon(
                      icone: Chemin.icone.search,
                      ontap: () {},
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ],
      ),
    ),
  );
}
