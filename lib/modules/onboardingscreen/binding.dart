import 'package:get/get.dart';
import 'package:resoce/modules/onboardingscreen/controller.dart';

class OnBoardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}
