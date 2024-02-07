import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/loader/loader.dart';

class ButtonFlat extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final String nextText;
  final bool select;
  final double width;
  final double widthText;
  final double height;
  final bool load;
  final bool iconeNext;

  const ButtonFlat(
      {Key? key,
      required this.callback,
      required this.title,
      this.select = false,
      this.width = 1,
      this.widthText = .6,
      this.nextText = '',
      this.height = .062,
      this.load = false,
      this.iconeNext = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextStyle textStyle =
    //     ThemeText.semibold.copyWith(fontSize: Get.width * .036);

    // final Color buttonColor = select
    //     ? AppColors.primaryColor
    //     : const Color.fromARGB(255, 188, 189, 192);

    return SizedBox(
      width: Get.width * width,
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
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        width: Get.width * widthText,
                        child: Text(
                          "${capitalizeText(title.tr)}${' ${nextText.tr}'}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Get.width * .04,
                          ),
                        ),
                      ),
                    ),
                    iconeNext
                        ? SizedBox(
                          width: Get.width *.08,
                          child: Image.asset(Chemin.icone.next, color: Colors.white))
                        : const SizedBox.shrink()
                  ],
                ),
              ),
            ),
    );
  }
}
