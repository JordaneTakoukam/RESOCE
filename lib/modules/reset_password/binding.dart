import 'package:get/get.dart';
import 'package:resoce/modules/reset_password/controller.dart';

class ResetPassordBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ResetPasswordController());
  }
}
