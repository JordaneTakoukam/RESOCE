// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/signin/repository.dart';

class SignInController extends GetxController {
  final SignInRepository repository = SignInRepository();

  RxBool pageLoading = false.obs;
  RxBool pageError = false.obs;

  late Rx<TextEditingController> idController;
  late Rx<TextEditingController> passwordController;

  FocusNode focusId = FocusNode();
  FocusNode focusPassword = FocusNode();

  @override
  void onInit() {
    super.onInit();
    idController = TextEditingController().obs;
    passwordController = TextEditingController().obs;
  }

  void closeKeyboardLogin() {
    try {
      focusId.unfocus();
    } catch (e) {}
    try {
      focusPassword.unfocus();
    } catch (e) {}
  }

  // fonction pour le login
  void userLogin() async {
    closeKeyboardLogin();
  }
}
