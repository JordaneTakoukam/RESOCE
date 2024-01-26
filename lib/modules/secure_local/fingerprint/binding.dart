import 'package:get/get.dart';
import 'package:resoce/modules/splashscreen/controller.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
