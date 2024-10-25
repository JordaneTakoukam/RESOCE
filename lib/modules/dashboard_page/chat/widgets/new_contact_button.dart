import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/routes/app_pages.dart';

class BoutonNouveauContact extends StatelessWidget {
  const BoutonNouveauContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height * .008),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.NEWCONTACT);
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: Get.height * .015,
            horizontal: Get.width * .04,
          ),
          child: Row(
            children: [
              Container(
                height: Get.width * .1,
                width: Get.width * .1,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(Get.width * .02),
                child: Image.asset(
                  Chemin.icone.newUser,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: Get.width * .025),
              Text(
                capitalizeText('new_contact'.tr),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: Get.width * .035,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
