// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';
import 'package:resoce/global_widgets/formes/bezier_container.dart';
import 'package:resoce/global_widgets/loader/loader.dart';
import 'package:resoce/modules/reset_password/controller.dart';
import 'package:resoce/modules/reset_password/widgets/id_input_reset.dart';

class ResetPasswordPage extends GetView<ResetPasswordController> {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formSignin = GlobalKey<FormState>();

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
              SizedBox(height: Get.height * .12),
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
                  capitalizeText("reset_password".tr),
                  style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: Get.width * .05,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: Get.height * .1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
                child: Column(
                  children: [
                    Form(
                      key: formSignin,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // email
                          Text(capitalizeText('enter_your_identifier'.tr)),
                          SizedBox(height: Get.height * .025),
                          const IdInputResetPassword(),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * .05),
                    ButtonFlat(
                      callback: () {
                        if (formSignin.currentState!.validate()) {
                          controller.userLogin();
                        }
                      },
                      title: capitalizeText('reset'.tr),
                      select: true,
                    ),
                    SizedBox(height: Get.height * .1),
                  ],
                ),
              ),
            ],
          ),

          //

          Obx(
            () => controller.pageLoading.value
                ? Container(
                    color: Colors.grey.withOpacity(.5),
                    width: double.infinity,
                    height: double.infinity,
                    child: const Center(
                      child: Loader(),
                    ),
                  )
                : const SizedBox.shrink(),
          ),

          Positioned(
            top: Get.height * .025,
            left: 0,
            child: const ButtonRetourAuth(),
          ),
        ],
      ),
    );
  }
}
