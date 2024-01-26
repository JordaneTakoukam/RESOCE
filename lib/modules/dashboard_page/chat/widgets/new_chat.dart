import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/values/colors/color_app.dart';

class NewChat extends StatelessWidget {
  const NewChat({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primaryColor,
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.all(Get.width * .035),
        child: Image.asset(
          Chemin.icone.chatFlat,
          color: Colors.white,
        ),
      ),
    );
  }
}
