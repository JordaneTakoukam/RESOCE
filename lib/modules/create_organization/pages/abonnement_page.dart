import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';
import 'package:resoce/global_widgets/formes/bezier_container.dart';
import 'package:resoce/modules/create_organization/controllers/controller_create_company.dart';
import 'package:resoce/modules/create_organization/widgets/abonnement_list_card/abonn_card_1.dart';
import 'package:resoce/routes/app_pages.dart';

class AbonnementCreateCompanyPage extends GetView<CreateCompanyController> {
  const AbonnementCreateCompanyPage({super.key});

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

          ListView(
            padding: EdgeInsets.symmetric(horizontal: Get.width * .04),
            children: [
              SizedBox(height: Get.height * .055),
              Center(
                child: Text(
                  capitalizeText('subscription'.tr),
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: Get.width * .05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: Get.height * .08),

              // liste des plan d'abonnement
              const AbonnementCard1(),

              //
            ],
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
      bottomNavigationBar: Obx(() => controller.subscriptionPlan.value != 0
          ? DelayedDisplayWidget(
              fadingDuration: const Duration(milliseconds: 500),
              delay: const Duration(milliseconds: 100),
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: Get.height * .03,
                  top: Get.height * .01,
                  left: Get.width * .04,
                  right: Get.width * .04,
                ),
                child: Container(
                  margin: EdgeInsets.only(left: Get.width * .02),
                  color: Colors.transparent,
                  width: Get.width * .7,
                  height: 50,
                  child: ButtonFlat(
                    iconeNext: true,
                    callback: () {
                      Get.toNamed(Routes.CONFIRMCREATECOMPANY);
                    },
                    widthText: .58,
                    title: "register_my_business",
                    select: false,
                  ),
                ),
              ),
            )
          : const SizedBox.shrink()),
    );
  }
}
