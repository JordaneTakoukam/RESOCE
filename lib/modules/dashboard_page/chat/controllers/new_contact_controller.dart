import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/data/db_local/_isare_local_db.dart';
import 'package:resoce/models/client.dart';

class NewContactController extends GetxController {
  @override
  void onInit() async {
    userNameController = TextEditingController().obs;
    emailController = TextEditingController().obs;
    functionController = TextEditingController().obs;
    await getCompany();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    userNameController.value.dispose();
    emailController.value.dispose();
    functionController.value.dispose();
    super.onClose();
  }

  //
  // variable
  FocusNode focusUsername = FocusNode();
  FocusNode focusEmail = FocusNode();
  FocusNode focusFunction = FocusNode();
  late Rx<Client> client = Client.empty().obs;
  final GlobalKey<FormState> formNewContact = GlobalKey<FormState>();
  late final Rx<TextEditingController> userNameController;
  late final Rx<TextEditingController> emailController;
  late final Rx<TextEditingController> functionController;
  RxString currentUsername = ''.obs;
  RxBool pageLoading = false.obs;

  //
  // methodes
  Future getCompany() async {}
}
