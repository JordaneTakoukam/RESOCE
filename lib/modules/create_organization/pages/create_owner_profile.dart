import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';
import 'package:resoce/global_widgets/formes/bezier_container.dart';
import 'package:resoce/modules/create_organization/controllers/controller_create_company.dart';
import 'package:resoce/routes/app_pages.dart';

class CreateOwnerProfilePage extends GetView<CreateCompanyController> {
  const CreateOwnerProfilePage({super.key});

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
                SizedBox(height: Get.height * .055),

                Text(
                  capitalizeText('create_my_profile'.tr),
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: Get.width * .05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: Get.height * .03),

         
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
                      bottom: Get.height * .03,
                      top: Get.height * .01,
                      left: Get.width * .04,
                      right: Get.width * .04,
                    ),
                    child: ButtonFlat(
                      callback: () {
                        Get.toNamed(Routes.DASHBOARDCOMPANYNOTACTIVATED);
                      },
                      widthText: .58,
                      title: "finish",
                      select: false,
                    ),
                  ),
                ),
             
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
