import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/data/providers/app_provider.dart';
import 'package:resoce/global_widgets/appbar/appbar_home.dart';
import 'package:resoce/modules/dashboard_page/setting/controllers/setting_controller.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarHome(titleAppbar: 'settings'),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AppProvider().logout();
          },
          child: Text('Se Deconnecter'),
        ),
      ),
    );
  }
}
