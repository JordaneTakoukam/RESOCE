import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';
import 'package:resoce/global_widgets/formes/bezier_container.dart';
import 'package:resoce/global_widgets/pages/loading_page.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';
import 'package:resoce/modules/create_company/pages/sub_sliders_pages/_page_indicator.dart';

class SlidersCreateCompanyPage extends GetView<CreateCompanyController> {
  const SlidersCreateCompanyPage({super.key});

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
            children: [
              SizedBox(height: Get.height * .08),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .09),
                child: DelayedDisplayWidget(
                  slidingBeginOffset: const Offset(0, 0),
                  delay: const Duration(milliseconds: 100),
                  child: SizedBox(
                    height: Get.width * .25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        Chemin.logo.logo2,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * .025),
              Center(
                child: Text(
                  capitalizeText("create_account_for_my_business".tr),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: Get.width * .06,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: Get.height * .02),

              // a partir d'ici

              const DotIndicatorCreateCompany(),

              // creer un dot indicator de 04 pages ici
            ],
          ),

          //

          Positioned(
            top: Get.height * .025,
            left: 0,
            child: const ButtonRetourAuth(),
          ),

          // page de loading
          Obx(() => LoadingPage(pageLoading: controller.pageLoading.value)),
        ],
      ),
    );
  }
}
