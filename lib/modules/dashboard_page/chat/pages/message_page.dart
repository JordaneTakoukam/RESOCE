import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/global_widgets/appbar/appbar_message.dart';
import 'package:resoce/modules/dashboard_page/chat/controller/message_controller.dart';

class MessagePage extends GetView<MessageControler> {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MessageControler(), permanent: true);

    return Scaffold(
      appBar: appbarMessage(),
      body: const Center(
        child: Text('Contenu'),
      ),
      bottomNavigationBar: Container(
        height: Get.height * .085,
        width: Get.width,
        color: Colors.white,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundDark,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(Get.width * .03),
          ),
        ),
      ),
    );
  }
}
