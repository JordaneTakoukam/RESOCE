import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:resoce/data/db_local/_isare_local_db.dart';
import 'package:resoce/modules/dashboard_menu_page/controller.dart';
import 'package:resoce/routes/app_pages.dart';

AndroidOptions getAndroidOptions() =>
    const AndroidOptions(encryptedSharedPreferences: true);

final storage = FlutterSecureStorage(aOptions: getAndroidOptions());

class AppProvider {
  Future<String?> getTokenFromLocalStorage() async {
    var token = await storage.read(key: 'token');

    return token;
  }

  // update le uid stocker et encrypter en local
  void saveTokenOnLocalStorage({required String token}) async {
    await storage.write(key: 'token', value: token);
  }

  // supprimer les info en local
  Future<void> removeAllLocalDataUser() async {
    await storage.deleteAll();
  }

  Future<void> logout() async {
    // supprimer le token
    await removeAllLocalDataUser();

    // suppriemr les info du user
    await LocalDb.deleteClient();

    var appController = Get.find<DashboardController>();
    Get.offAndToNamed(Routes.SPLASHSCREEN);
    appController.updatePage(0);
  }
}
