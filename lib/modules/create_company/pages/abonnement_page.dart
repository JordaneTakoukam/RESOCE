import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';
import 'package:resoce/global_widgets/formes/bezier_container.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class AbonnementCreateCompanyPage extends GetView<CreateCompanyController> {
  const AbonnementCreateCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // forme
          Positioned(
            top: -Get.height * .15,
            right: -Get.width * .4,
            child: const BezierContainer(),
          ),

          ListView(
            children: [
              SizedBox(height: Get.height * .02),
              Center(
                  child: Text(
                'Abonnement',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Get.width * .05,
                  fontWeight: FontWeight.w600,
                ),
              ),)
            ],
          ),

          //

          Positioned(
            top: Get.height * .025,
            left: 0,
            child: const ButtonRetourAuth(),
          ),

          // page de loading
        ],
      ),
    );
  }
}
