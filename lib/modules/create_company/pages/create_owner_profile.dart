import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/modules/create_company/controllers/controller_create_company.dart';

class CreateOwnerProfilePage extends GetView<CreateCompanyController> {
  const CreateOwnerProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Text('CreateOwnerProfilePage')));
  }
}
