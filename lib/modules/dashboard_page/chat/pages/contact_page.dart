import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/contacts_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/new_contact_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/appbar/app_contact.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/contact_list/listview_contact_page.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/new_contact_button.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ContactController());
    Get.put(NewContactController());

    return Scaffold(
      appBar: appbarContactPage(),
      backgroundColor: AppColors.background,
      body: const SingleChildScrollView(
        // Enclose content in SingleChildScrollView
        child: Column(
          children: [
            BoutonNouveauContact(),
            ListViewContactPage(),
          ],
        ),
      ),
    );
  }
}
