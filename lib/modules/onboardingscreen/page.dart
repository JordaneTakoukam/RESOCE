import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/global_widgets/buttons/button_animation_loading.dart';
import 'package:resoce/global_widgets/loader/loader.dart';
import 'package:resoce/modules/onboardingscreen/controller.dart';
import 'package:resoce/modules/onboardingscreen/widgets/on_boarding_widget.dart';
import 'package:resoce/routes/app_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends GetView<OnBoardingController> {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isSuccess.value == false
            ? const Center(child: Loader())
            : Stack(
                children: [
                  PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: controller.indicator,
                    onPageChanged: ((value) {
                      controller.currentPage.value = value;
                    }),
                    itemCount: controller.sliders.length,
                    itemBuilder: (context, index) {
                      return OnBoardingWidgets(
                        title: controller.sliders[index].title,
                        subtitle: controller.sliders[index].description,
                        image: controller.sliders[index].image,
                      );
                    },
                  ),
                  controller.currentPage.value != controller.sliders.length - 1
                      ? Container(
                          alignment: const Alignment(0.8, -0.85),
                          child: GestureDetector(
                            onTap: () {
                              if (controller.currentPage.value !=
                                  controller.sliders.length - 1) {
                                controller.indicator.animateToPage(
                                  controller.sliders.length - 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                );
                              }
                            },
                            child: Text(
                              'skip'.tr,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  Obx(
                    () => Container(
                      alignment: const Alignment(0, 0.85),
                      child: controller.currentPage.value !=
                              controller.sliders.length - 1
                          ? SmoothPageIndicator(
                              controller: controller.indicator,
                              count: controller.sliders.length,
                              effect: const SlideEffect(
                                activeDotColor: AppColors.primaryColor,
                                spacing: 8.0,
                                radius: 4.0,
                                dotWidth: 8,
                                dotHeight: 8,
                                dotColor: AppColors.darkGrey,
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * .04),
                              child: ButtonAnimateLoading(
                                callback: () {
                                  Get.toNamed(Routes.SIGNIN);
                                },
                                title: 'getting_started',
                                select: true,
                              ),
                            ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
