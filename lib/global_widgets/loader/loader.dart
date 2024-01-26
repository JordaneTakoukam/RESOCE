import 'package:flutter/material.dart';
import 'package:resoce/core/values/colors/color_app.dart';


class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 55,
      height: 55,
      child: CircularProgressIndicator(
        color: AppColors.primaryColor,
        strokeWidth: 3,
      ),
    );
  }
}
