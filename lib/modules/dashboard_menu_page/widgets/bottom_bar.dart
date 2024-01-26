import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/notifications/number_notification_bb.dart';
import 'package:resoce/modules/dashboard_menu_page/controller.dart';
import 'package:resoce/modules/dashboard_menu_page/widgets/bottom_icon.dart';

class ListeIconesBottomBar extends StatelessWidget {
  const ListeIconesBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            //
            //
            Stack(
              children: [
                ModelIconBottomBar(
                  index: 0,
                  titre: "chats",
                  iconeFlat: Chemin.icone.chatFlat,
                  iconeOutline: Chemin.icone.chatOutline,
                  width: .21,
                ),
                const NumberNotificationButtonBar(number: '5')
              ],
            ),
            //
            ModelIconBottomBar(
              index: 1,
              titre: "groups",
              iconeFlat: Chemin.icone.groupFlat,
              iconeOutline: Chemin.icone.groupOutline,
              width: .21,
            ),

            SizedBox(
              width: Get.width * .16,
              child: InkWell(
                onTap: () {
                  Get.find<DashboardController>().updatePage(2);
                },
              ),
            ),

            //
            //
            ModelIconBottomBar(
              index: 3,
              titre: "announcements",
              iconeFlat: Chemin.icone.annonceFlat,
              iconeOutline: Chemin.icone.anonceOutline,
              width: .21,
            ),

            Stack(
              children: [
                ModelIconBottomBar(
                  index: 4,
                  titre: "settings",
                  iconeFlat: Chemin.icone.settingFlat,
                  iconeOutline: Chemin.icone.settingOutline,
                  rotated: true,
                  width: .21,
                ),
                // if (message == true) const RedNotif()
              ],
            ),
          ],
        ),
      ],
    );
  }
}
