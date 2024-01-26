import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/buttons/app_bar_icon.dart';
import 'package:resoce/global_widgets/logo/logo_app_bar.dart';

PreferredSizeWidget appBarHome({required String titleAppbar}) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: Get.height * .085,
    elevation: .5,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    automaticallyImplyLeading: false,
    titleSpacing: 0,
    title: Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .035),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height * .04),
          Row(
            children: [
              const LogoAppbar(),
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
          Text(
            capitalizeText(titleAppbar.tr),
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
