import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class DashboardCompanyNotActivated extends GetView<CreateCompanyController> {
  const DashboardCompanyNotActivated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Text('DashboardCompanyNotActivated')));
  }
}
