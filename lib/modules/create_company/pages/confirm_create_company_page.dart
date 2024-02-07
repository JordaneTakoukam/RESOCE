import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';
import 'package:resoce/global_widgets/buttons/button_outiline.dart';
import 'package:resoce/global_widgets/formes/bezier_container.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';
import 'package:resoce/routes/app_pages.dart';

class ConfirmCreateCompanyPage extends GetView<CreateCompanyController> {
  const ConfirmCreateCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // forme
          Positioned(
            top: -Get.height * .15,
            right: -Get.width * .4,
            child: const BezierContainer(),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * .04),
            child: Column(
              children: [
                //
                //
                //  contenu de la page
                SizedBox(height: Get.height * .15),

                Text(
                  capitalizeText('almost_done'.tr),
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: Get.width * .06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: Get.height * .03),

                //
                //
                //
                //  lotties
                Lottie.asset(
                  Chemin.lottie.success,
                  repeat: true,
                  width: Get.width * .55,
                  height: Get.width * .55,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: Get.height * .03),

                Text(
                  capitalizeText('complete_registration'.tr),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: Get.width * .04,
                  ),
                ),

                // liste des plan d'abonnement

                //
                //
                //
                //  bouton
                const Spacer(),
                DelayedDisplayWidget(
                  fadingDuration: const Duration(milliseconds: 400),
                  delay: const Duration(milliseconds: 100),
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: Get.height * .01,
                      top: Get.height * .01,
                      left: Get.width * .04,
                      right: Get.width * .04,
                    ),
                    child: ButtonFlat(
                      iconeNext: true,
                      callback: () {
                        Get.toNamed(Routes.CREATEOWNERPROFILE);
                      },
                      widthText: .58,
                      title: "create_my_profile",
                      select: false,
                    ),
                  ),
                ),
                DelayedDisplayWidget(
                  fadingDuration: const Duration(milliseconds: 400),
                  delay: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: Get.height * .01,
                      top: Get.height * .01,
                      left: Get.width * .04,
                      right: Get.width * .04,
                    ),
                    child: ButtonOutline(
                      callback: () {
                        Get.back();
                      },
                      widthText: .58,
                      title: "cancel",
                      select: false,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * .02),
              ],
            ),
          ),

          //

          Positioned(
            top: Get.height * .025,
            left: 0,
            child: const ButtonRetourAuth(),
          ),

          // page de loading
        ],
      ),
    );
  }
}
