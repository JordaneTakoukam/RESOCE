import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';
import 'package:resoce/modules/create_company/widgets/inputs_sliders/slider_input_companie_name.dart';
import 'package:resoce/modules/create_company/widgets/title_slider_page.dart';

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
      child: Obx(
        () => Form(
          key: controller.form1.value,
          child: Column(
            children: [
              const TitleSliderPage(title: "Localisation de la structure"),
              SizedBox(height: Get.height * .05),

              const InputCompanyName(),
              const InputCompanyName(),
              const InputCompanyName(),
              const InputCompanyName(),

            ],
          ),
        ),
      ),
    );
  }
}
