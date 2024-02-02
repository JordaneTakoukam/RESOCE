import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/appbar/app_contact.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/new_contact_button.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarContactPage(),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: Get.height *.008),
        children: const [
          BoutonNouveauContact(),
        ],
      ),
    );
  }
}
