import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/global_widgets/buttons/button_icon_back.dart';

PreferredSizeWidget appbarDetailContact() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: Get.height * .075,
    elevation: .5,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    automaticallyImplyLeading: false,
    titleSpacing: 0,
    title: Padding(
      padding: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // bouton retour
          const ButtonRetour(),

          SizedBox(width: Get.width * .025),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Get.width * .035,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),

          IconButton(
            tooltip: 'Menu',
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
