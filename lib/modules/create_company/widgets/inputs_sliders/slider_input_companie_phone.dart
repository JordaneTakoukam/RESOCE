import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/inputs/input.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class InputCompanyPhone1 extends GetView<CreateCompanyController> {
  final double width;
  const InputCompanyPhone1({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
        considereMaj: false,
        focusNode: controller.focusCompanyPhone,
        width: width,
        required: true,
        labelText:
            capitalizeText('Numero de telephone principal de la structure'.tr),
        keyboardType: TextInputType.phone,
        controller: controller.controllerCompanyPhone.value,
        validator: (value) {
          if (value.isEmpty) {
            return capitalizeText('field_required'.tr);
          }
          return null;
        },
        onChanged: (String value) => {
          controller.companyPhone1.value = value,
        },
      ),
    );
  }
}

class InputCompanyPhone2 extends GetView<CreateCompanyController> {
  final double width;
  const InputCompanyPhone2({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
        considereMaj: false,
        focusNode: controller.focusCompanyName,
        width: width,
        required: false,
        labelText: capitalizeText('Numero de telephone 2'.tr),
        keyboardType: TextInputType.phone,
        controller: controller.controllerCompanyPhone.value,
        validator: (value) {
          if (value.isEmpty) {
            return capitalizeText('field_required'.tr);
          }
          return null;
        },
        onChanged: (String value) => {
          controller.companyPhone2.value = value,
        },
      ),
    );
  }
}

class InputCompanyPhone3 extends GetView<CreateCompanyController> {
  final double width;
  const InputCompanyPhone3({super.key, this.width = 1});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
        considereMaj: false,
        focusNode: controller.focusCompanyName,
        width: width,
        required: false,
        labelText: capitalizeText('Numero de telephone 3'.tr),
        keyboardType: TextInputType.phone,
        controller: controller.controllerCompanyPhone.value,
        validator: (value) {
          if (value.isEmpty) {
            return capitalizeText('field_required'.tr);
          }
          return null;
        },
        onChanged: (String value) => {
          controller.companyPhone2.value = value,
          print(value),
        },
      ),
    );
  }
}
