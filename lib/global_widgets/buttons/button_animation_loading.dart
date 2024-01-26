import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/global_widgets/loader/loader.dart';

class ButtonAnimateLoading extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final String nextText;
  final bool select;
  final double width;
  final double height;
  final bool load;

  const ButtonAnimateLoading({
    Key? key,
    required this.callback,
    required this.title,
    this.select = false,
    this.width = double.infinity,
    this.nextText = '',
    this.height = .067,
    this.load = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: Get.width * .04,
      color: Colors.white,
    );

    final Color buttonColor =
        select ? AppColors.primaryColor : AppColors.darkGrey;

    return SizedBox(
      width: width,
      // height: Get.height * height,
      height: 55,
      child: load == true
          ? const Center(child: Loader())
          : ElevatedButton(
              onPressed: callback,
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                capitalizeText("${title.tr}${' ${nextText.tr}'}"),
                style: textStyle,
              ),
            ),
    );
  }
}
