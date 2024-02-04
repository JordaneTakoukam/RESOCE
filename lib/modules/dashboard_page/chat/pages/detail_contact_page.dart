import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/models/contact.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/appbar/appbar_detail_contact.dart';

class DetailContactPage extends StatelessWidget {
  final Contact contact;
  const DetailContactPage({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appbarDetailContact(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * .22),
            SizedBox(
              height: Get.width * .23,
              width: Get.width * .23,
              child: Image.asset(Chemin.icone.avatar),
            ),

            //
            SizedBox(height: Get.height * .02),
            Text(
              capitalizeText(contact.username),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Get.width * .05,
              ),
            ),
            SizedBox(height: Get.height * .02),
            Text(
              capitalizeText(contact.fonction),
              style: TextStyle(
                color: AppColors.primaryColor.withOpacity(.7),
                fontSize: Get.width * .035,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
