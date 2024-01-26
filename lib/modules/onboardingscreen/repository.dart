import 'package:resoce/data/data_test/sliders.dart';

class OnBoardingRepository {
  Future<dynamic> getDataOnboarding() async {
    return await Future.delayed(const Duration(seconds: 0), () => listSliders);
  }
}
