import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/global_widgets/loader/loader.dart';
import 'package:resoce/modules/dashboard_menu_page/controller.dart';
import 'package:resoce/modules/dashboard_menu_page/widgets/bottom_bar.dart';

class Dashboard extends GetView<DashboardController> {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    colorSafeWhite();
    return Obx(
      () => controller.showApp.value == false
          ? const Scaffold(body: Center(child: Loader()))
          : Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Scaffold(
                  body: controller.getCurentPage(),
                  //
                  bottomNavigationBar: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: .3,
                              offset: Offset(0, 7),
                            ),
                          ],
                        ),
                        height: 58,
                        margin: const EdgeInsets.only(bottom: .2),
                        child: const ListeIconesBottomBar(),
                      ),
                    ],
                  ),
                ),

                // ----------------

                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      controller.updatePage(2);
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: Get.height * .02),
                      width: Get.width * .14,
                      height: Get.width * .14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (controller.pageIndex.value == 2)
                              ? AppColors.primaryColor
                              : Colors.white,
                          border: Border.all(
                            width: 2,
                            color: !(controller.pageIndex.value == 2)
                                ? AppColors.primaryColor
                                : Colors.transparent,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primaryColor.withOpacity(.5),
                              blurRadius: 10,
                              spreadRadius: .5,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(Get.width * .04),
                        child: Image.asset(
                          Chemin.icone.callFlat,

                          color: !(controller.pageIndex.value == 2)
                              ? AppColors.primaryColor
                              : Colors.white,
                          fit: BoxFit.contain,
                          //     : AppColors.unSelectIcon,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
