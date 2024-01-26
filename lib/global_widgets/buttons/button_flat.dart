import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/values/colors/color_app.dart';
import 'package:resoce/global_widgets/loader/loader.dart';


class ButtonFlat extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final String nextText;
  final bool select;
  final double width;
  final double height;
  final bool load;

  const ButtonFlat({
    Key? key,
    required this.callback,
    required this.title,
    this.select = false,
    this.width = double.infinity,
    this.nextText = '',
    this.height = .062,
    this.load = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextStyle textStyle =
    //     ThemeText.semibold.copyWith(fontSize: Get.width * .036);

    // final Color buttonColor = select
    //     ? AppColors.primaryColor
    //     : const Color.fromARGB(255, 188, 189, 192);

    return SizedBox(
      width: width,
      height: Get.height * height,
      child: load == true
          ? const Center(child: Loader())
          : ElevatedButton(
              onPressed: callback,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "${title.tr}${' ${nextText.tr}'}",
                style: TextStyle(color: Colors.white, fontSize: Get.width *.04,),
              ),
            ),
    );
  }
}
