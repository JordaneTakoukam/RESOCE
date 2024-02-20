import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';

class TitleSliderPage extends StatelessWidget {
  final String title;
  const TitleSliderPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      capitalizeText(title.tr),
      style: TextStyle(
        fontSize: Get.width * .04,
        fontWeight: FontWeight.w600,
        color: Colors.black.withOpacity(.6),
      ),
    );
  }
}
