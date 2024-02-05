import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/models/contact.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/contacts_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/pages/detail_contact_page.dart';
import 'package:resoce/routes/app_pages.dart';
import 'package:resoce/routes/goto.dart';

class ContactWidget extends GetView<ContactController> {
  final Contact contact;
  const ContactWidget({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height * .008),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.to(
                () => DetailContactPage(contact: contact),
                transition: Transition.rightToLeft,
                duration: const Duration(milliseconds: 300),
              );
              // GetPage(
              //   page: () => DetailContactPage(contact: contact),
              //   transitionDuration: Duration(milliseconds: Duration()),
              //   transition: Transition.rightToLeft,
              //   name: '',
              // );
              // Get.toNamed(Routes.NEWCONTACT);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: Get.height * .015,
                horizontal: Get.width * .04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: Get.width * .1,
                    width: Get.width * .1,
                    child: Image.asset(
                      Chemin.icone.avatar,
                    ),
                  ),
                  SizedBox(width: Get.width * .025),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        capitalizeText(contact.username),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: Get.width * .035,
                        ),
                      ),
                      Text(
                        capitalizeText(contact.email),
                        style: TextStyle(
                          color: AppColors.primaryColor.withOpacity(.7),
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * .03,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: AppColors.greenOnline,
                        size: Get.width * .022,
                      ),
                      SizedBox(width: Get.width * .01),
                      Text(
                        'En ligne',
                        style: TextStyle(
                            color: AppColors.greenOnline,
                            fontSize: Get.width * .025),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //  Padding(
          //     padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
          //     child: Divider(
          //       color: Color.fromARGB(255, 207, 205, 205),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
