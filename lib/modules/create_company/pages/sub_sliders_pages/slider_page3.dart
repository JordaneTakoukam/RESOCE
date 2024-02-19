import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';
import 'package:resoce/modules/create_company/widgets/button_add_contact.dart';
import 'package:resoce/modules/create_company/widgets/button_delete_input_phone.dart';
import 'package:resoce/modules/create_company/widgets/inputs_sliders/slider_input_companie_email.dart';
import 'package:resoce/modules/create_company/widgets/inputs_sliders/slider_input_companie_name.dart';
import 'package:resoce/modules/create_company/widgets/inputs_sliders/slider_input_companie_phone.dart';
import 'package:resoce/modules/create_company/widgets/title_slider_page.dart';

class SliderPage3 extends GetView<CreateCompanyController> {
  const SliderPage3({super.key});

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
              const TitleSliderPage(title: "Informations sur la structure"),
              SizedBox(height: Get.height * .05),

              const InputCompanyName(),
              const InputCompanyEmail(),
              const InputCompanyPhone1(),

              //
              Column(
                children: [
                  //
                  //
                  controller.numberInputPhone.value == 2 ||
                          controller.numberInputPhone.value > 2
                      ? Row(
                          children: [
                            const InputCompanyPhone2(width: .75),
                            const Spacer(),
                            DeletePhoneInput(ontap: () {
                              controller.numberInputPhone.value = 1;
                            })
                          ],
                        )
                      : const SizedBox.shrink(),

                  //
                  //
                  controller.numberInputPhone.value == 3
                      ? Row(
                          children: [
                            const InputCompanyPhone3(width: .75),
                            const Spacer(),
                            DeletePhoneInput(ontap: () {
                              controller.numberInputPhone.value = 2;
                            })
                          ],
                        )
                      : const SizedBox.shrink(),
                ],
              ),

              //
              controller.numberInputPhone.value == 3
                  ? const SizedBox.shrink()
                  : Center(
                      child: ButtonAddPhone(
                        ontap: () {
                          if (controller.numberInputPhone.value == 1) {
                            controller.numberInputPhone.value = 2;
                          }
                          //
                          else if (controller.numberInputPhone.value == 2) {
                            controller.numberInputPhone.value = 3;
                          }
                          //
                        },
                      ),
                    ),

              //
              //

              //
              
            ],
          ),
        ),
      ),
    );
  }
}
