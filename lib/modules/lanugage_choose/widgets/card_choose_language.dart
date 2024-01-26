import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/global_widgets/animations/anim_widgets.dart';


class CardChooseLanguage extends StatelessWidget {
  const CardChooseLanguage({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimWidget(
      animationType: AnimationType.fade,
      child: Container(
        height: Get.height * 0.75,
        width: Get.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 18,
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[100]!),
        ),
        child: child,
      ),
    );
  }
}
