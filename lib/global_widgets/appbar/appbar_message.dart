import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';

PreferredSizeWidget appbarMessage() {
  return AppBar(
    backgroundColor: AppColors.primaryColor,
    toolbarHeight: Get.height * .09,
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
            width: Get.width * .125,
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
              SizedBox(height: Get.height * .005),
              Text(
                "En ligne aujourd'hui 16h:30 :",
                style: TextStyle(
                  color: const Color.fromARGB(255, 210, 207, 207),
                  fontSize: Get.width * .032,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),

          SizedBox(
            height: Get.height * .028,
            child: Image.asset(
              Chemin.icone.noInternet,
              color: Colors.white,
            ),
          ),
          SizedBox(width: Get.width * .05),
        ],
      ),
    ),
  );
}
