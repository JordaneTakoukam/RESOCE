import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/models/country_model.dart';
import 'package:resoce/models/sliders_model.dart';
import 'package:resoce/modules/onboardingscreen/repository.dart';

class OnBoardingController extends GetxController {
  final OnBoardingRepository _repository = OnBoardingRepository();

  RxBool isLoading = true.obs;
  PageController indicator = PageController();
  RxInt currentPage = 0.obs;
  RxList<SliderModel> sliders = <SliderModel>[].obs;
  RxList<CountryModel> countries = <CountryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchData();
    _fetchCountries();
  }

  Future<void> _fetchData() async {
    isLoading.value = true;

    try {
      await Future.delayed(const Duration(milliseconds: 400), () async {
        var result = await _repository.getDataOnboarding();

        var data = result['data']['data'];

        // Convertir chaque élément dans la liste en un objet SliderModel
        List<SliderModel> sliderModels =
            (data as List).map((item) => SliderModel.fromJson(item)).toList();

        // Affecter la liste d'objets SliderModel à la variable sliders
        sliders.assignAll(sliderModels);

        // Indiquer que l'opération a réussi
        isLoading.value = false;
      });
    } catch (e) {
      isLoading.value = false;
    }
  }

  Future<void> _fetchCountries() async {
    isLoading.value = true;

    try {
      await Future.delayed(const Duration(milliseconds: 400), () async {
        var result = await _repository.getCountriesData();

        var data = result['data']['data'];

        List<CountryModel> listCountry =
            (data as List).map((item) => CountryModel.fromJson(item)).toList();

        countries.assignAll(listCountry);

        print(countries.value.length);
        isLoading.value = false;
      });
    } catch (e) {
      print('Erreur ===> ${e.toString()}');
      isLoading.value = false;
    }
  }
}
