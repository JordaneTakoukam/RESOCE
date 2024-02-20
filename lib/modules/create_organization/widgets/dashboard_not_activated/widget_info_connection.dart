import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';

class WidgetInfoConnection extends StatefulWidget {
  final String title;
  final String value;
  const WidgetInfoConnection(
      {Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  State<WidgetInfoConnection> createState() => _WidgetInfoConnectionState();
}

class _WidgetInfoConnectionState extends State<WidgetInfoConnection> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${capitalizeText(widget.title.tr)} : ",
          style: TextStyle(
            fontSize: Get.width * .035,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        isVisible
            ? Text(
                widget.value,
                style: TextStyle(
                  fontSize: Get.width * .035,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                ),
              )
            : Text(
                '***********',
                style: TextStyle(
                  fontSize: Get.width * .035,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                ),
              ), // Affiche * par défaut si non visible
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          icon: Icon(
            isVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
            size: Get.width * .06,
          ),
        ),
      ],
    );
  }
}

class WidgetInfoEntreprise extends StatelessWidget {
  final String title;
  const WidgetInfoEntreprise({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          capitalizeText(title.tr),
          style: TextStyle(
            fontSize: Get.width * .035,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class ResultatText extends StatelessWidget {
  final String title;
  final bool success;
  const ResultatText({
    super.key,
    required this.title,
    required this.success,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Get.height * .005),
      child: Row(
        children: [
          success
              ? Icon(
                  Icons.check,
                  color: AppColors.greenOnline,
                  size: Get.width * .05,
                )
              : Icon(
                  Icons.schedule,
                  color: const Color.fromARGB(255, 204, 126, 23),
                  size: Get.width * .05,
                ),
          SizedBox(width: Get.width * .025),
          Text(
            title,
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: Get.width * .035,
            ),
          ),
        ],
      ),
    );
  }
}
