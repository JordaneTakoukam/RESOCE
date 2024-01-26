import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/inputs/input.dart';
import 'package:resoce/modules/signin/controller.dart';

class PassWordInput extends GetView<SignInController> {
  final double width;
  const PassWordInput({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return InputTextAuth(
      focusNode: controller.focusPassword,
      required: true,
      obscureText: true,
      labelText: capitalizeText('password'.tr),
      keyboardType: TextInputType.visiblePassword,
      controller: controller.passwordController.value,
      validator: (value) {
        return validatePasswordInput(value);
      },
    );
  }
}
