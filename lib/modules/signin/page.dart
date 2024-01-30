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
import 'package:resoce/modules/signin/controller.dart';
import 'package:resoce/modules/signin/widgets/id_input.dart';
import 'package:resoce/modules/signin/widgets/password_input.dart';
import 'package:resoce/routes/app_pages.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

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
                  delay: const Duration(milliseconds: 300),
                  child: SizedBox(
                    height: Get.width * .4,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        Chemin.logo.logo2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * .025),
              Center(
                child: Text(
                  capitalizeText("log_in".tr),
                  style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: Get.width * .05,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: Get.height * .05),
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
                          SizedBox(height: Get.height * .025),
                          const IdInput(),

                          // mot de passe
                          const PassWordInput(),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * .05),
                    ButtonFlat(
                      callback: () {
                        if (formSignin.currentState!.validate()) {
                          controller.userLogin();
                          // Get.toNamed(Routes.DASHBOARD);
                        }
                      },
                      title: capitalizeText('log_in'.tr),
                      select: true,
                    ),
                    SizedBox(height: Get.height * .04),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.RESETPASSWORD);
                        },
                        child: Text(
                          capitalizeText("password_forgotten".tr),
                          style: TextStyle(
                            fontSize: Get.width * .037,
                            fontWeight: FontWeight.w800,
                            color: Colors.black.withOpacity(.7),
                          ),
                        ),
                      ),
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
