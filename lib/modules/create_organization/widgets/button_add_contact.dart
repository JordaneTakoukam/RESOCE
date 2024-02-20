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
    return Padding(
      padding: EdgeInsets.only(top: Get.height *.015),
      child: InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: ontap,
        child: Stack(
          children: [
            //
            //
           Padding(
                padding: EdgeInsets.only(left: Get.width * .09,top: Get.height *.001),
                child:  Material(
              borderRadius: BorderRadius.circular(500),
              elevation: 10,
              color: Colors.black,
              child: Container(
                  width: Get.width * .595,
                  height: Get.height * .0495,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Ajouter un autre numero de telephone',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Get.width * .028,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
      
            //
            //
      
            Padding(
              padding: EdgeInsets.only(left: Get.width * .015),
              child: SizedBox(
                child: Material(
                  borderRadius: BorderRadius.circular(500),
                  elevation: 3,
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(Get.width * .02),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: Get.width * .07,
                    ),
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
