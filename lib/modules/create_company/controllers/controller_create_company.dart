import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateCompanyController extends GetxController {
  //
  RxBool pageLoading = false.obs;
  RxBool pageError = false.obs;

  //page sliders create company
  PageController indicator = PageController(keepPage: false);
  RxInt currentPage = 0.obs;

  // abonnement
  RxInt subscriptionPlan = 0.obs;
}
