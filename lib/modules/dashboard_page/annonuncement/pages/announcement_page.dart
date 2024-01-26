import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/global_widgets/appbar/appbar_home.dart';
import 'package:resoce/modules/dashboard_page/annonuncement/controller/announcement_controller.dart';

class AnnouncementPage extends GetView<AnnouncementController> {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarHome(titleAppbar: 'announcements'),
      body: const Center(
        child: Text('Announcement page'),
      ),
    );
  }
}
