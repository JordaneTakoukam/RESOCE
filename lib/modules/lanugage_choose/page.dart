import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/.config.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/paths/paths.dart';
import 'package:resoce/data/providers/languages_providers.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/modules/onboardingscreen/controller.dart';
import '../../../routes/app_pages.dart';

class ChooseLangPage extends StatefulWidget {
  const ChooseLangPage({super.key});

  @override
  State<ChooseLangPage> createState() => _ChooseLangPageState();
}

class _ChooseLangPageState extends State<ChooseLangPage> {
  // Création de l'instance du LanguageProvider
  final languageProvider = Get.find<LanguageProvider>();

  int selectedRadioTile = 0;

  @override
  void initState() {
    super.initState();
    if (languageProvider.getLanguage() == 'en') {
      selectedRadioTile = 1;
    } else if (languageProvider.getLanguage() == 'fr') {
      selectedRadioTile = 2;
    } else {
      selectedRadioTile = 3;
    }
  }

  setSelectedRadioTile(int val, String lang) {
    languageProvider.changeLanguage(lang);
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {},
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: Get.height * .1),
                    SizedBox(
                      width: Get.width * .5,
                      child: Image.asset(Chemin.logo.logo2),
                    ),
                    SizedBox(height: Get.height * .06),

                    Text(
                      '${capitalizeText('welcome_to'.tr)} ${AppConfig.appName}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.width * .045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: Get.height * .01),

                    Text(
                      capitalizeText('choose_your_language'.tr),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 88, 87, 87),
                        fontSize: Get.width * .035,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: Get.height * .04),

                    RadioListTile(
                      value: 1,
                      groupValue: selectedRadioTile,
                      title: Text(
                        capitalizeText('english'.tr),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: selectedRadioTile != 3
                          ? Text('(${"device's_language".tr})')
                          : Text(capitalizeText('english'.tr)),
                      onChanged: (val) {
                        setSelectedRadioTile(val ?? 0, 'en');
                      },
                      selected: selectedRadioTile == 1,
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: selectedRadioTile,
                      title: Text(
                        capitalizeText(languageProvider.getLanguage() != 'fr'
                            ? 'Français'
                            : 'French'),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        capitalizeText('french'.tr),
                      ),
                      onChanged: (val) {
                        setSelectedRadioTile(val ?? 0, 'fr');
                      },
                      selected: selectedRadioTile == 2,
                    ),
                    SizedBox(height: Get.height * .3),

                    // bouton
                    DelayedDisplayWidget(
                      delay: const Duration(milliseconds: 200),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Get.width * .04),
                        child: ButtonFlat(
                          title: capitalizeText('continue'.tr),
                          iconeNext: true,
                          callback: () {
                            if (selectedRadioTile == 1 ||
                                selectedRadioTile == 2) {
                              Get.toNamed(Routes.ONBOARDING);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
