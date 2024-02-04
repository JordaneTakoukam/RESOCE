import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/contacts_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/contacts_page/contact_widget.dart';

class ListViewContactPage extends GetView<ContactController> {
  const ListViewContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        physics:
            const NeverScrollableScrollPhysics(), // Disable ListView's scrolling
        shrinkWrap: true, // Allow ListView to take up only required space
        itemCount: controller.contactList.length,
        itemBuilder: (context, index) {
          var contact = controller.contactList[index];

          //
          return ContactWidget(contact: contact);
        },
      ),
    );
  }
}
