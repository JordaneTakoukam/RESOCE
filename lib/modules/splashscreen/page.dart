import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/.config.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/error_page/error_page.dart';
import 'package:resoce/modules/splashscreen/controller.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    colorSafe();
    return OrientationBuilder(
      builder: (context, orientation) {
        bool isLandscape = orientation == Orientation.landscape;

        return Obx(
          () => controller.pageError.value
              ? PageError(retry: () => controller.initializeApplication())
              : Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // image du logo
                          SizedBox(height: Get.height * .15),

                          // nom de l'app
                          DelayedDisplayWidget(
                            slidingBeginOffset: const Offset(0, 0),
                            delay: const Duration(milliseconds: 300),
                            child: SizedBox(
                              width: isLandscape
                                  ? Get.width * .30
                                  : Get.width * .8,
                              child: Image.asset(Chemin.logo.logo2),
                            ),
                          ),
                          const SizedBox(height: 30),

                          const DelayedDisplayWidget(
                            slidingBeginOffset: Offset(0, 0),
                            delay: Duration(seconds: 2),
                            child: Text(
                              AppConfig.appName,
                              style: TextStyle(
                                color: AppColors.textFoncer,
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),

                          const Spacer(),
                          DelayedDisplayWidget(
                              slidingBeginOffset: isLandscape
                                  ? const Offset(0, 0.5)
                                  : const Offset(0, 1),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  text: 'By ',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 16,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: AppConfig.from,
                                      style: TextStyle(
                                        color: AppColors.textColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(height: Get.height * .05),
                        ],
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
