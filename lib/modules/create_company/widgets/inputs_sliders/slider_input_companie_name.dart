import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/inputs/input.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class InputCompanyName extends GetView<CreateCompanyController> {
  final double width;
  const InputCompanyName({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
        considereMaj: false,
        focusNode: controller.focusCompanyName,
        width: width,
        required: true,
        labelText: capitalizeText('nom de la strucuture'.tr),
        keyboardType: TextInputType.text,
        controller: controller.controllerCompanyName.value,
        validator: (value) {
          if (value.isEmpty) {
            return capitalizeText('field_required'.tr);
          }
          return null;
        },
        onChanged: (String value) => {
          controller.companyName.value = value,
        },
      ),
    );
  }
}
