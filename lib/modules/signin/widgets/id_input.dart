import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/inputs/input.dart';
import 'package:resoce/modules/signin/controller.dart';

class IdInput extends GetView<SignInController> {
  final double width;
  const IdInput({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
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
      ),
    );
  }
}
