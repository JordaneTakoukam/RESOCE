 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/global_widgets/loader/loader.dart';

class ButtonOutline extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final String nextText;
  final bool select;
  final double width;
  final double widthText;
  final double height;
  final bool load;
  final bool iconeNext;

  const ButtonOutline({
    Key? key,
    required this.callback,
    required this.title,
    this.select = false,
    this.width = double.infinity,
    this.widthText = .6,
    this.nextText = '',
    this.height = .055,
    this.load = false,
    this.iconeNext = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: Get.height * height,
      child: load
          ? const Center(child: Loader())
          : OutlinedButton(
              onPressed: callback,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.primaryColor, width: 1.5),
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
                            color: AppColors.primaryColor,
                            fontSize: Get.width * .035,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    iconeNext
                        ? SizedBox(
                            width: Get.width * .08,
                            child: Image.asset(
                              Chemin.icone.next,
                              color: AppColors.primaryColor,
                            ),
                          )
                        : const SizedBox.shrink()
                  ],
                ),
              ),
            ),
    );
  }
}
