import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/new_contact_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/appbar/appbar_new_contact.dart';

class NewContact extends GetView<NewContactController> {
  const NewContact({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NewContactController());

    //
    //

    return Scaffold(
      appBar: appbarNewContact(),
      body: ListView(
        children: [],
      ),
    );
  }
}
