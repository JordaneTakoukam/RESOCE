import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/reset_password/repository.dart';

class ResetPasswordController extends GetxController {
  final ResetPassordRepository repository = ResetPassordRepository();

  RxBool pageLoading = false.obs;
  RxBool pageError = false.obs;

  late Rx<TextEditingController> idController;

  FocusNode focusId = FocusNode();

  @override
  void onInit() {
    super.onInit();
    idController = TextEditingController().obs;
  }

  void closeKeyboardLogin() {
    try {
      focusId.unfocus();
    } catch (e) {}
  }

  // fonction pour le login
  void userLogin() async {
    closeKeyboardLogin();
  }
}
