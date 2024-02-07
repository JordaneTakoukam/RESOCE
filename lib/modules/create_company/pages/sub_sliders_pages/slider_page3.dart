import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class SliderPage3 extends GetView<CreateCompanyController> {
  const SliderPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Get.height * .06,
        left: Get.width * .05,
        right: Get.width * .05,
      ),
      child: Column(
        children: [
          Text(
            "Page3",
            style: TextStyle(
              fontSize: Get.width * .05,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: Get.height * .05),

          //
        ],
      ),
    );
  }
}
