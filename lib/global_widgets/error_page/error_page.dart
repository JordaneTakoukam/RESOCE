import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';


class PageError extends StatelessWidget {
  final double paddingTop;
  final VoidCallback retry;
  const PageError({super.key, required this.retry, this.paddingTop = .25});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Get.width * .1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * .22),
            SizedBox(
              width: Get.width * .2,
              child: Image.asset(
                Chemin.icone.noInternet,
                // color: AppColors.text2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: Get.height * .03),
            Text(
              'Une erreur est survenue',
              style: TextStyle(
                // color: AppColors.text2,
                fontSize: Get.width * .05,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Get.height * .025),
            Text(
              'Vérifier votre connexion à internet, puis appuyer sur le bouton actualiser ci-dessous',
              textAlign: TextAlign.center,
              style: TextStyle(
                // color: AppColors.text2,
                fontSize: Get.width * .0345,
              ),
            ),
            SizedBox(height: Get.height * .1),
            ButtonFlat(
              title: 'Actualiser',
              callback: retry,
              select: true,
            )
          ],
        ),
      ),
    );
  }
}
