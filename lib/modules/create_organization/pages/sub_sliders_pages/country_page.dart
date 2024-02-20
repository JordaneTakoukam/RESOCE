import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/models/country_model.dart';
import 'package:resoce/modules/create_organization/controllers/controller_create_company.dart';
import 'package:resoce/modules/onboardingscreen/controller.dart';

class CountryPage extends GetView<CreateCompanyController> {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var languageController = Get.find<OnBoardingController>();

    List<CountryModel> countries = languageController.countries;

    return Scaffold(
        appBar: AppBar(title: Text('CountryPage')),
        body: SafeArea(child: Text('CountryController')));
  }
}
