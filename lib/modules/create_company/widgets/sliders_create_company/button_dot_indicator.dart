import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class ButtonDotInticator extends GetView<CreateCompanyController> {
  final bool next;
  Widget iconeNavigate(bool next) {
    return Container(
      width: Get.width * .13,
      height: Get.width * .13,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor,
            AppColors.primaryColor2,
          ],
        ),
      ),
      child: Center(
        child: Icon(
          next == false ? Icons.arrow_back : Icons.arrow_forward,
          color: Colors.white,
          size: Get.width * .065,
        ),
      ),
    );
  }

  // dynamic toastWarning(BuildContext context) {
  //   return cherryToastModel(
  //     context: context,
  //     title: "Veuillez renseigner tous les champs requis pour continuer",
  //     backgroundColor: Colors.red.shade400,
  //     textColor: Colors.white,
  //     shadowColor: Colors.white.withOpacity(.3),
  //   );
  // }

  const ButtonDotInticator({
    super.key,
    required this.next,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          if (next) {
            controller.indicator.animateToPage(
              controller.currentPage.value + 1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
            // if (controller.currentPage.value == 0) {
            //   // if (controller.accountType.value.isEmpty) {
            //   //   toastWarning(context);
            //   // } else {
            //   //   controller.indicator.animateToPage(
            //   //     controller.currentPage.value + 1,
            //   //     duration: const Duration(milliseconds: 500),
            //   //     curve: Curves.fastLinearToSlowEaseIn,
            //   //   );
            //   // }
            // } else if (controller.currentPage.value == 1) {
            //   if (controller.firstNameController.value.text.isEmpty ||
            //       controller.lastNameController.value.text.isEmpty ||
            //       controller.emailController.value.text.isEmpty ||
            //       controller.phoneNumberController.value.text.isEmpty) {
            //     toastWarning(context);
            //   } else {
            //     controller.indicator.animateToPage(
            //       controller.currentPage.value + 1,
            //       duration: const Duration(milliseconds: 500),
            //       curve: Curves.fastLinearToSlowEaseIn,
            //     );
            //   }
            // } else if (controller.currentPage.value == 2) {
            //   if (controller.accountType.value.isEmpty) {
            //     toastWarning(context);
            //   } else {
            //     controller.indicator.animateToPage(
            //       controller.currentPage.value + 1,
            //       duration: const Duration(milliseconds: 500),
            //       curve: Curves.fastLinearToSlowEaseIn,
            //     );
            //   }
            // } else if (controller.currentPage.value == 3) {
            //   if (controller.accountType.value.isEmpty) {
            //     toastWarning(context);
            //   } else {
            //     controller.indicator.animateToPage(
            //       controller.currentPage.value + 1,
            //       duration: const Duration(milliseconds: 500),
            //       curve: Curves.fastLinearToSlowEaseIn,
            //     );
            //   }
            // }
          } else {
            controller.indicator.animateToPage(
              controller.currentPage.value - 1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          }
        },
        child: Row(
          children: [
            !next && controller.currentPage.value != 0
                ? Padding(
                    padding: EdgeInsets.only(right: Get.width * .02),
                    child: iconeNavigate(false),
                  )
                : const SizedBox.shrink(),
            next && controller.currentPage.value != 2
                ? Padding(
                    padding: EdgeInsets.only(left: Get.width * .02),
                    child: iconeNavigate(true),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
