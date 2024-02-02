import 'package:get/get.dart';
import 'package:resoce/modules/splashscreen/repository.dart';
import 'package:resoce/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  final SplashScreenRepository _repository = SplashScreenRepository();

  bool existUser = false;

  RxBool loading = true.obs;

  RxBool pageError = false.obs;

  @override
  void onInit() async {
    super.onInit();

    //
    // initialisation du stockage locale

    existUser = await _repository.getExistingUserInLocal();

    // on vas vers la page onboarding
    if (!existUser) {
      // delay pour attendre que la page splash s'affiche avant de continuer
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.CHOOSELANGUAGE);
      });
    } else {
      Future.delayed(const Duration(seconds: 1), () {
        initializeApplication();
      });
    }
  }

  Future<void> initializeApplication() async {
    pageError.value = false;
    loading.value = true;

    // // on vas vers la page de page d'accueil
    // Map<String, dynamic> data = await AppProvider().getIdLocal();
    // var clientObjectId = data['clientObjectId'];

    // var userDatabase = await _repository.getUserData(clientObjectId.toString());

    // var gController = Get.put(AppConnectController(), permanent: true);

    // if (userDatabase == null) {
    //   pageError.value = true;
    // }
    //
    // else {
    //   gController.setUserData(UserModel.fromJson(userDatabase));

    //   BalanceModel balanceClient = await gController.getCurrentBalanceClient();

    //   gController.setBalanceClient(balanceClient);

    Get.offAllNamed(Routes.DASHBOARD);
    // }
    loading.value = false;
  }
}
