// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/data/db_local/_isare_local_db.dart';
import 'package:resoce/models/client.dart';
import 'package:resoce/data/providers/app_provider.dart';
import 'package:resoce/data/providers/languages_providers.dart';
import 'package:resoce/modules/signin/repository.dart';
import 'package:resoce/routes/app_pages.dart';

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

  @override
  void onClose() {
    idController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
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
  Future<String> userLogin() async {
    closeKeyboardLogin();

    pageLoading.value = true;
    String langue = Get.find<LanguageProvider>().getLanguage();

    try {
      var result = await repository.loginApi(
        loginId: idController.value.text.trim(),
        password: passwordController.value.text.trim(),
      );

      late Client clientModel;
      String? token;

      // verifie  si les donnees recu de l'api existe
      if (result['data'] != null) {
        clientModel = Client.fromJson(result['data']['data']);
        token = result['data']['token'];

        // sauvegarder le token de facon securiser en local
        AppProvider().saveTokenOnLocalStorage(token: token.toString());

        // sauvegarder les donnees du client dans la bd local
        LocalDb.setClient(clientModel);

        // ON REDIREIGe vers la page principale
        Get.offAndToNamed(Routes.DASHBOARD);
      } else {
        pageLoading.value = false;
        return result['message'][langue];
      }

      pageLoading.value = false;

      //
    } catch (e) {
      pageLoading.value = false;
    }
    return '';
  }
}
