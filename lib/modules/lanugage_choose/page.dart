import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/data/providers/languages_providers.dart';
import 'package:resoce/global_widgets/animations/delay_widget.dart';
import 'package:resoce/global_widgets/buttons/button_flat.dart';
import 'package:resoce/modules/lanugage_choose/widgets/card_choose_language.dart';
import 'package:resoce/modules/lanugage_choose/widgets/lottie_language.dart';
import 'package:resoce/modules/lanugage_choose/widgets/select_language.dart';
import '../../../routes/app_pages.dart';

class ChooseLangPage extends StatefulWidget {
  const ChooseLangPage({super.key});

  @override
  State<ChooseLangPage> createState() => _ChooseLangPageState();
}

class _ChooseLangPageState extends State<ChooseLangPage> {
  // Création de l'instance du LanguageProvider
  final languageProvider = Get.find<LanguageProvider>();
  bool click = false;

  String select = '';
  String languageSelect = '';
  void changeSelect(value) {
    setState(() => select = value);
  }

  void setCurrentLanguageSelect(value) {
    setState(() => languageSelect = value);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {},
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: CardChooseLanguage(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: Get.height * .02),

                    // animation lottie
                    const LottieLanguage(),
                    SizedBox(height: Get.height * .02),

                    // texte choisissez votre langue
                    Text(
                      capitalizeText('choose_language'.tr),
                      style: TextStyle(
                        fontSize: Get.width * .055,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    // choix anglais
                    SizedBox(height: Get.height * .04),
                    DelayedDisplayWidget(
                      delay: const Duration(milliseconds: 800),
                      child: SelectLanguage(
                        select: select == 'en',
                        title: "english",
                        callback: () {
                          setState(() => click = true);
                          changeSelect('en');
                          setCurrentLanguageSelect("english");
                          languageProvider.changeLanguage(select);
                        },
                      ),
                    ),

                    // choix francais
                    SizedBox(height: Get.height * .02),
                    DelayedDisplayWidget(
                      delay: const Duration(milliseconds: 1000),
                      child: SelectLanguage(
                        select: select == 'fr',
                        title: 'french',
                        callback: () {
                          setState(() => click = true);

                          changeSelect('fr');
                          setCurrentLanguageSelect("french");
                          languageProvider.changeLanguage(select);
                        },
                      ),
                    ),

                    // bouton valider
                    SizedBox(height: Get.height * .07),
                    DelayedDisplayWidget(
                      delay: const Duration(milliseconds: 1400),
                      child: ButtonFlat(
                        title: capitalizeText('continue_in'.tr),
                        nextText: languageSelect,
                        select: select != '',
                        callback: () {
                          if (click) {
                            Get.toNamed(Routes.ONBOARDING);
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
