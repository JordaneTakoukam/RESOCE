import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';

class ButtonAddPhone extends StatelessWidget {
  final VoidCallback ontap;
  const ButtonAddPhone({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Stack(
        children: [
          //
          //
          Padding(
            padding: EdgeInsets.only(left: Get.width * .15),
            child: Container(
              width: Get.width * .66,
              height: Get.height * .035,
              padding: EdgeInsets.only(left: Get.width * .0),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Ajouter un autre numero de telephone',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Get.width * .03,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          //
          //
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: Get.width * .05),
                padding: EdgeInsets.all(Get.width * .025),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: Get.width * .07,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
