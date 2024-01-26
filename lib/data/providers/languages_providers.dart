import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageProvider extends GetxController {
  final box = GetStorage();

  final RxString _selectedLanguage = ''.obs;
  String get selectedLanguage => _selectedLanguage.value;

  @override
  void onInit() {
    super.onInit();
    _loadSavedLanguage();
  }

  void _loadSavedLanguage() {
    final savedLanguage = box.read('language');

    if (savedLanguage != null) {
      _setLanguage(savedLanguage);
    } else {
      final deviceLanguage = Get.deviceLocale?.languageCode ?? 'en';
      _setLanguage(_getSupportedLanguage(deviceLanguage));
    }
  }

  void _setLanguage(String language) {
    _selectedLanguage.value = language;
    box.write('language', language);
    Get.updateLocale(Locale(language));
  }

  String _getSupportedLanguage(String language) {
    // Vérifie si la langue est prise en charge
    if (language == 'fr' || language == 'en') {
      return language;
    } else {
      // Si la langue n'est pas prise en charge, la langue par défaut est "en"
      return 'en';
    }
  }

  void changeLanguage(String language) {
    _setLanguage(language);
  }

  String getLanguage() {
    return selectedLanguage;
  }
}
