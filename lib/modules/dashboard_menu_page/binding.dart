import 'package:get/get.dart';
import 'package:resoce/modules/dashboard_menu_page/controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController(), permanent: true);
  }
}
