import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class AbonnementCard1 extends GetView<CreateCompanyController> {
  const AbonnementCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          if (controller.subscriptionPlan.value == 1) {
            controller.subscriptionPlan.value = 0;
          } else {
            controller.subscriptionPlan.value = 1;
          }
        },
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(Get.width * .04),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.borderGray,
                width: .5,
              ),
            ),
            height: Get.height * .2,
            child: Row(
              children: [
                const Text('Abonnement 1'),
                const Spacer(),
                SizedBox(
                  height: Get.width * .1,
                  width: Get.width * .1,
                  child: controller.subscriptionPlan.value != 0
                      ? Icon(
                          Icons.check_circle,
                          color: AppColors.primaryColor,
                          size: Get.width * .1,
                        )
                      : Center(
                          child: Container(
                            height: Get.width * .092,
                            width: Get.width * .092,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.darkGrey),
                              borderRadius: BorderRadius.circular(500),
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
