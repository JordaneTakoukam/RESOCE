import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/global_widgets/appbar/appbar_home.dart';
import 'package:resoce/modules/dashboard_page/group/controller/group_controller.dart';

class GroupPage extends GetView<GroupController> {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(      backgroundColor: Colors.white,

      appBar: appBarHome(titleAppbar: 'groups'),
      body: const Center(
        child: Text('Group page'),
      ),
    );
  }
}
