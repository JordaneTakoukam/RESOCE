import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/global_widgets/inputs/input.dart';
import 'package:resoce/modules/dashboard_page/chat/controllers/new_contact_controller.dart';

class UserNameInput extends GetView<NewContactController> {
  const UserNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return InputTextAuth(
      considereMaj: false,
      focusNode: controller.focusUsername,
      width: 1,
      required: true,
      labelText: capitalizeText('contact_username'.tr),
      keyboardType: TextInputType.text,
      controller: controller.userNameController.value,
      validator: (value) {
        return null;
      },
      onChanged: (value) {
        controller.currentUsername.value = value;
      },
    );
  }
}

class EmailInput extends GetView<NewContactController> {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
        considereMaj: false,
        focusNode: controller.focusEmail,
        width: 1,
        required: true,
        labelText:
            '${capitalizeText('email_of'.tr)} ${controller.currentUsername.value}',
        keyboardType: TextInputType.emailAddress,
        controller: controller.emailController.value,
        validator: (value) {
          return null;
        },
      ),
    );
  }
}

class FunctionInput extends GetView<NewContactController> {
  const FunctionInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputTextAuth(
        considereMaj: false,
        focusNode: controller.focusFunction,
        width: 1,
        required: true,
        labelText:
            '${capitalizeText('function_in_the_company_of'.tr)} ${controller.currentUsername.value}',
        hintText: 'ex: Directeur technique / Concierge / Stagiaire acadé..',
        keyboardType: TextInputType.text,
        controller: controller.functionController.value,
        validator: (value) {
          return null;
        },
      ),
    );
  }
}

class FunctionDropDown extends GetView<NewContactController> {
  const FunctionDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add logic to show modal bottom sheet
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 200,
              child: Center(
                child: Text('Dropdown List'),
              ),
            );
          },
        );
      },
      child: Text(capitalizeText('privilege_in_the_application'.tr)),
    );
  }
}

class ButtonAddNewContact extends GetView<NewContactController> {
  const ButtonAddNewContact({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonFlat(
      callback: () {},
      title: capitalizeText('add'.tr),
    );
  }
}
