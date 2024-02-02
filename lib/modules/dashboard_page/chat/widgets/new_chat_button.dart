import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/routes/app_pages.dart';

class NewChatButton extends StatelessWidget {
  const NewChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * .12,
      height: Get.width * .12,
      child: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          Get.toNamed(Routes.CONTACTPAGE);
        },
        child: Padding(
          padding: EdgeInsets.all(Get.width * .038),
          child: Image.asset(
            Chemin.icone.write,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
