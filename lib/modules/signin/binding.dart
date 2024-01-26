import 'package:get/get.dart';
import 'package:resoce/modules/signin/controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}
