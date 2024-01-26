import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/data/services/localazation/locales/en.dart';
import 'package:resoce/data/services/localazation/locales/fr.dart';

class LocalizationService extends Translations {
  final locale = const Locale('en', 'US'); // ANGLAIS AMERICAIN
  final fallbackLocale = const Locale('en', 'US'); // ANGLAIS AMERICAIN

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'fr_FR': fr,
      };
}
