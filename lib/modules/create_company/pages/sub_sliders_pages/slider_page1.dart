import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class SliderPage1 extends GetView<CreateCompanyController> {
  const SliderPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Get.height * .02,
        left: Get.width * .04,
        right: Get.width * .04,
      ),
      child: Column(
        children: [
          Text(
            "Page1",
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
