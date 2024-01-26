import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/theme/theme_app.dart';
import 'package:resoce/data/providers/languages_providers.dart';
import 'package:resoce/data/services/localazation/service_localazation.dart';
import 'package:resoce/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  enableRotation();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Création de l'instance du LanguageProvider
    final languageProvider = Get.put(LanguageProvider());

    // Récupération de la langue sauvegardée
    final savedLanguage = languageProvider.selectedLanguage;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      //
      initialRoute: Routes.DASHBOARD,

      // acceder a toutes les pages de l'app
      getPages: AppPages.pages,

      // theme generale de l'application
      theme: AppTheme.lightTheme,

      // Ajout du service de localisation à GetMaterialApp
      translations: LocalizationService(),
      // Langue par défaut
      locale: Locale(savedLanguage),

      // Langue de secours
      fallbackLocale: LocalizationService().fallbackLocale,
    );
  }
}
