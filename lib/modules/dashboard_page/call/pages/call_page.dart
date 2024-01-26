import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/appbar/appbar_home.dart';
import 'package:resoce/modules/dashboard_page/call/controller/call_controller.dart';

class CallPage extends GetView<CallController> {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarHome(titleAppbar: 'calls'),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .025),
        children: [
          phoneCallCard1(),
          videoCall(),
          phoneCallCard2(),
          phoneCallCard3(),
        ],
      ),
    );
  }
}

Widget phoneCallCard1() {
  return ListTile(
    leading: CircleAvatar(
      radius: 26,
      child: Image.asset(Chemin.icone.avatar),
    ),
    title: Text(
      'Gabriel Dubois',
      style: TextStyle(
        fontSize: Get.width * .035,
        fontWeight: FontWeight.w500,
      ),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.call_made,
          color: Colors.green,
          size: 20,
        ),
        SizedBox(width: 6),
        Text('26 Janv., 18:15')
      ],
    ),
    trailing: Icon(
      Icons.call,
      size: 26,
      color: Colors.green,
    ),
  );
}

Widget phoneCallCard2() {
  return ListTile(
    leading: CircleAvatar(
      radius: 26,
      child: Image.asset(Chemin.icone.avatar),
    ),
    title: Text(
      'Gabriel Dubois',
      style: TextStyle(
        fontSize: Get.width * .035,
        fontWeight: FontWeight.w500,
      ),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.call_missed_sharp,
          color: Colors.red,
          size: 20,
        ),
        SizedBox(width: 6),
        Text('26 Janv., 18:15'),
      ],
    ),
    trailing: Icon(
      Icons.call,
      size: 26,
      color: Colors.red,
    ),
  );
}

Widget phoneCallCard3() {
  return ListTile(
    leading: CircleAvatar(
      radius: 26,
      child: Image.asset(Chemin.icone.avatar),
    ),
    title: Text(
      'Lucas Lefebvre',
      style: TextStyle(
        fontSize: Get.width * .035,
        fontWeight: FontWeight.w500,
      ),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.call_made,
          color: Colors.green,
          size: 20,
        ),
        SizedBox(width: 6),
        Text('26 Janv., 18:15')
      ],
    ),
    trailing: Icon(
      Icons.call,
      size: 26,
      color: Colors.green,
    ),
  );
}

Widget videoCall() {
  return ListTile(
    leading: CircleAvatar(
      radius: 26,
      child: Image.asset(Chemin.icone.avatar),
    ),
    title: Text(
      'Lucas Lefebvre',
      style: TextStyle(
        fontSize: Get.width * .035,
        fontWeight: FontWeight.w500,
      ),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.missed_video_call_outlined,
          color: Colors.red,
          size: 20,
        ),
        SizedBox(width: 6),
        Text('26 Janv., 18:15')
      ],
    ),
    trailing: Icon(
      Icons.videocam,
      size: 26,
      color: Colors.red,
    ),
  );
}
