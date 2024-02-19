import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/inputs/input.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class InputCompanyEmail extends GetView<CreateCompanyController> {
  final double width;
  const InputCompanyEmail({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
        considereMaj: false,
        focusNode: controller.focusCompanyName,
        width: width,
        required: true,
        labelText: capitalizeText('email de la strucuture'.tr),
        keyboardType: TextInputType.emailAddress,
        controller: controller.controllerCompanyEmail.value,
        validator: (value) {
          if (value.isEmpty) {
            return capitalizeText('field_required'.tr);
          }
          return null;
        },
        onChanged: (String value) => {
          controller.companyEmail.value = value,
          print(value),
        },
      ),
    );
  }
}
