import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/data/models/sliders_model.dart';
import 'package:resoce/modules/onboardingscreen/repository.dart';

class OnBoardingController extends GetxController {
  final OnBoardingRepository _repository = OnBoardingRepository();

  RxBool isSuccess = false.obs;
  PageController indicator = PageController();
  RxInt currentPage = 0.obs;
  var sliders = <SliderModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      await Future.delayed(const Duration(milliseconds: 400), () async {
        var data = await _repository.getDataOnboarding();

        // Convertir chaque élément dans la liste en un objet SliderModel
        List<SliderModel> sliderModels = List<SliderModel>.from(
          (data as List).map((item) => SliderModel.fromJson(item)),
        );

        // Affecter la liste d'objets SliderModel à la variable sliders
        sliders.value = sliderModels;

        // Indiquer que l'opération a réussi
        isSuccess.value = true;
      });
    } catch (e) {
      // En cas d'erreur, indiquer que l'opération a échoué
      isSuccess.value = false;
    }
  }
}
