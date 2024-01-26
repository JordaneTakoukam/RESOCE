import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/data/providers/languages_providers.dart';

class OnBoardingWidgets extends StatelessWidget {
  final dynamic image;
  final dynamic title;
  final dynamic subtitle;
  const OnBoardingWidgets({
    super.key,
    this.image,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final languageProvider = Get.find<LanguageProvider>();

    // Récupération de la langue sauvegardée
    final lang = languageProvider.selectedLanguage;

    return Container(
      color: const Color.fromARGB(255, 242, 238, 238).withOpacity(.1),
      height: Get.height,
      child: Column(
        children: [
          Container(
            height: Get.height * 0.65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$image'),
                scale: 1.4,
              ),
            ),
          ),
          Container(
            height: Get.height * 0.35,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(
              vertical: Get.height * .04,
              horizontal: Get.width * .025,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${title[lang]}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Get.width * .045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Get.height * .02,
                ),
                Text(
                  '${subtitle[lang]}',
                  style: TextStyle(
                    fontSize: Get.width * .03,
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
