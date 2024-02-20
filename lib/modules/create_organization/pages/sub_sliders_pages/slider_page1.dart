import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/modules/create_organization/controllers/controller_create_company.dart';
import 'package:resoce/modules/create_organization/pages/sub_sliders_pages/country_page.dart';
import 'package:resoce/modules/create_organization/widgets/button_add_contact.dart';
import 'package:resoce/modules/create_organization/widgets/button_delete_input_phone.dart';
import 'package:resoce/modules/create_organization/widgets/inputs_sliders/slider_input_organization_email.dart';
import 'package:resoce/modules/create_organization/widgets/inputs_sliders/slider_input_companie_name.dart';
import 'package:resoce/modules/create_organization/widgets/inputs_sliders/slider_input_organization_phone.dart';
import 'package:resoce/modules/create_organization/widgets/title_slider_page.dart';
import 'package:resoce/routes/app_pages.dart';

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
              const TitleSliderPage(title: "Informations sur la structure"),
              SizedBox(height: Get.height * .05),

              const InputCompanyName(),
              const InputCompanyEmail(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.height * .016),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.COUNTRYPAGE);
                          },
                          child: Material(
                            elevation: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 189, 188, 188),
                                  width: .6,
                                ),
                              ),
                              width: Get.width * .25,
                              height: Get.height * .05,
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      convertirUnicodeEnEmoji(
                                          'U+1F1E6 U+1F1EB'),
                                      style: TextStyle(
                                        fontSize: Get.width * .05,
                                      ),
                                    ),
                                    Text(
                                      "  +237",
                                      style: TextStyle(
                                        fontSize: Get.width * .03,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: Get.width * .04),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.black,
                          size: Get.width * .07,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: Get.width * .02),
                  InputCompanyPhone1(
                    width: .5,
                  ),
                ],
              ),

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
                              controller.companyPhone2.value = '';
                              controller.controllerCompanyPhone2.value.clear();
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
                              controller.companyPhone3.value = '';
                              controller.controllerCompanyPhone3.value.clear();
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
            ],
          ),
        ),
      ),
    );
  }
}

