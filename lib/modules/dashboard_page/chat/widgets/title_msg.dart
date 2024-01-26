import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/paths/paths.dart';

class TitleMsgChat extends StatelessWidget {
  final String title;
  final bool pinned;
  const TitleMsgChat({
    super.key,
    required this.title,
    this.pinned = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .037),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                (title.tr).toUpperCase(),
                style: TextStyle(
                  color: const Color.fromARGB(255, 130, 130, 130),
                  fontSize: Get.width * .032,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: Get.width * .02),
              //
              pinned
                  ? Padding(
                      padding: EdgeInsets.only(bottom: Get.height * .006),
                      child: SizedBox(
                        height: Get.height * .016,
                        child: Image.asset(
                          Chemin.icone.pinned,
                          color: Colors.red,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          SizedBox(height: Get.height * .015),
        ],
      ),
    );
  }
}
