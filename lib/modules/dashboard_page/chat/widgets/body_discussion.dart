import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/dashboard_page/chat/controller/chat_controller.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/title_msg.dart';
import 'package:resoce/modules/dashboard_page/chat/widgets/widget_chat.dart';

class BodyDiscussionPage extends GetView<ChatController> {
  final ScrollController scrollController;
  const BodyDiscussionPage({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> pinnedChats =
        controller.listChat.where((chat) => chat['pinned'] == true).toList();
    final List<Map<String, dynamic>> others =
        controller.listChat.where((chat) => chat['pinned'] == false).toList();

    return ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.zero,
      itemCount: pinnedChats.length + others.length,
      itemBuilder: (context, index) {
        if (index < pinnedChats.length) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (index == 0)
                Padding(
                  padding: EdgeInsets.only(top: Get.height * .025),
                  child: const TitleMsgChat(title: 'pinned_messages', pinned: true),
                ),
              WidgetChat(listMessage: pinnedChats[index]),
            ],
          );
        } else {
          final otherIndex = index - pinnedChats.length;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (otherIndex == 0)
                Padding(
                  padding: EdgeInsets.only(top: Get.height * .025),
                  child: const TitleMsgChat(title: 'all_messages'),
                ),
              Padding(
                padding: EdgeInsets.only(
                  bottom:
                      otherIndex == others.length - 1 ? Get.height * .1 : 0,
                ),
                child: WidgetChat(listMessage: others[otherIndex]),
              ),
            ],
          );
        }
      },
    );
  }
}
