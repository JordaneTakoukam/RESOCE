import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';
import 'package:resoce/modules/create_company/pages/sub_sliders_pages/slider_page1.dart';
import 'package:resoce/modules/create_company/pages/sub_sliders_pages/slider_page2.dart';
import 'package:resoce/modules/create_company/pages/sub_sliders_pages/slider_page3.dart';
import 'package:resoce/modules/create_company/widgets/sliders_create_company/button_dot_indicator.dart';
import 'package:resoce/routes/app_pages.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicatorCreateCompany extends GetView<CreateCompanyController> {
  const DotIndicatorCreateCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: Get.height * .63,
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.indicator,
            onPageChanged: ((value) {
              controller.currentPage.value = value;
            }),
            itemCount: 3,
            itemBuilder: (context, index) {
              return index == 0
                  ? const SliderPage1()
                  : index == 1
                      ? const SliderPage2()
                      : const SliderPage3();
            },
          ),
        ),
        //
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: Get.width * .05),
              const ButtonDotInticator(next: false),
              controller.currentPage.value == 0
                  ? SizedBox(width: Get.width * .14)
                  : const SizedBox.shrink(),
              const Spacer(),
              Container(
                child: controller.currentPage.value != 2
                    ? SmoothPageIndicator(
                        controller: controller.indicator,
                        count: 3,
                        effect: const SlideEffect(
                          activeDotColor: AppColors.primaryColor,
                          spacing: 8.0,
                          radius: 4.0,
                          dotWidth: 8,
                          dotHeight: 8,
                          dotColor: AppColors.darkGrey,
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(left: Get.width * .02),
                        color: Colors.transparent,
                        width: Get.width * .7,
                        height: 50,
                        child: ButtonFlat(
                          iconeNext:true,
                          callback: () {
                            Get.toNamed(Routes.ABONNEMENTCREATECOMPANY);
                          },
                          widthText: .35,
                          title: "finish",
                          select: true,
                        )),
              ),
              const Spacer(),
              const ButtonDotInticator(next: true),
              SizedBox(width: Get.width * .05)
            ],
          ),
        )
      ],
    );
  }
}
