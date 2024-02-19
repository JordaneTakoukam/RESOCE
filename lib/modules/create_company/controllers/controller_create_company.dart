import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateCompanyController extends GetxController {
  Rx<GlobalKey<FormState>> form1 = GlobalKey<FormState>().obs;
  Rx<GlobalKey<FormState>> form2 = GlobalKey<FormState>().obs;
  Rx<GlobalKey<FormState>> form3 = GlobalKey<FormState>().obs;

  //
  RxBool pageLoading = false.obs;
  RxBool pageError = false.obs;

  //page sliders create company
  PageController indicator = PageController(keepPage: false);
  RxInt currentPage = 0.obs;

  // abonnement
  RxInt subscriptionPlan = 0.obs;

  //
  // controllers
  late Rx<TextEditingController> controllerCompanyName;
  late Rx<TextEditingController> controllerCompanyEmail;
  late Rx<TextEditingController> controllerCompanyPhone;

  //
  // focus
  FocusNode focusCompanyName = FocusNode();
  FocusNode focusCompanyEmail = FocusNode();
  FocusNode focusCompanyPhone = FocusNode();

  @override
  void onInit() {
    super.onInit();
    controllerCompanyName = TextEditingController().obs;
    controllerCompanyEmail = TextEditingController().obs;
    controllerCompanyPhone = TextEditingController().obs;
  }

  @override
  void onClose() {
    controllerCompanyName.value.dispose();
    controllerCompanyEmail.value.dispose();
    controllerCompanyPhone.value.dispose();
    super.onClose();
  }

  // error SUR LES PAGE SLIDE DE CREATION D'ENTREPRISE
  RxBool errorCompany = false.obs;
  RxBool errorCeo = false.obs;
  RxBool errorLocatisation = false.obs;

  // infomations pour la creation de l'entreprise
  RxString companyName = ''.obs;
  RxString companyEmail = ''.obs;
  //
  RxInt numberInputPhone = 1.obs;
  RxString companyPhone1 = ''.obs;
  RxString companyPhone2 = ''.obs;
  RxString companyPhone3 = ''.obs;

  //
  RxString ceoFirstName = ''.obs;
  RxString ceoLastName = ''.obs;
}
