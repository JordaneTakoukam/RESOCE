import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/global_widgets/appbar/appbar_message.dart';
import 'package:resoce/modules/dashboard_page/chat/controller/message_controller.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(MessageControler(), permanent: true);
    return Scaffold(
      appBar: appbarMessage(),
      body: Column(
        children: [
          const Spacer(),
          Container(
            height: Get.height * .075,
            width: Get.width,
            color: Colors.white,
            child: Row(children: [
              Container(
                margin: EdgeInsets.all(Get.width * .025),
                width: Get.width * .8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 237, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: Get.width * .05, bottom: Get.height * .01),
                      color: Colors.transparent,
                      width: Get.width * .57,
                      child: TextField(
                        controller: controller,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Get.width * .03),
                      child: Image.asset(
                        Chemin.icone.paperPin,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Get.width * .03),
                      child: Image.asset(
                        Chemin.icone.camera,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width * .12,
                height: Get.width * .12,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(Get.width * .025),
                  child: Image.asset(
                    Chemin.icone.microphone,
                    color: Colors.white,
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
