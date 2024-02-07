import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/inputs/input.dart';
import 'package:resoce/modules/reset_password/controller.dart';

class IdInputResetPassword extends GetView<ResetPasswordController> {
  final double width;
  const IdInputResetPassword({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return InputTextAuth(
      considereMaj: false,
      focusNode: controller.focusId,
      width: width,
      required: true,
      labelText: capitalizeText('login_id'.tr),
      keyboardType: TextInputType.text,
      controller: controller.idController.value,
      validator: (value) {
        return validateIdInput(value);
      },
    );
  }
}
