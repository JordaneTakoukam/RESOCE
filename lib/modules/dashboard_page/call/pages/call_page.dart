import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/global_widgets/appbar/appbar_home.dart';
import 'package:resoce/modules/dashboard_page/call/controller/call_controller.dart';

class CallPage extends GetView<CallController> {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.white,

      appBar: appBarHome(titleAppbar: 'calls'),
      body: const Center(
        child: Text('Call page'),
      ),
    );
  }
}
