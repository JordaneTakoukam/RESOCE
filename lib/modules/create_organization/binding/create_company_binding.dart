import 'package:get/get.dart';
import 'package:resoce/modules/create_organization/controllers/controller_create_company.dart';

class CreateCompanyBiging implements Bindings {
  @override
  void dependencies() {
    Get.put(CreateCompanyController());
  }
}