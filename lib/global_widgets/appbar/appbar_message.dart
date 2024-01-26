import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';
import 'package:resoce/global_widgets/buttons/call_button.dart';

PreferredSizeWidget appbarMessage() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: Get.height * .075,
    elevation: .5,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    automaticallyImplyLeading: false,
    titleSpacing: 0,
    title: Padding(
      padding: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // bouton retour
          const ButtonRetour(),

          // image de profil
          SizedBox(
            width: Get.width * .095,
            child: Image.asset(Chemin.icone.avatar),
          ),

          SizedBox(width: Get.width * .025),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                capitalizeText('lucas Lefebvre'),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Get.width * .035,
                  fontWeight: FontWeight.bold,
                ),
              ),
          
            ],
          ),
          const Spacer(),

          CallButton(onTap: () {}, isPhone: false),
          SizedBox(width: Get.width *.01),
          CallButton(onTap: () {}, isPhone: true),
          SizedBox(width: Get.width *.02),
        ],
      ),
    ),
  );
}
