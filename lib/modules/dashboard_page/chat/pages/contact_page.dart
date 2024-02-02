import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/app_contact.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/bouton_nouveau_contact.dart';

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
