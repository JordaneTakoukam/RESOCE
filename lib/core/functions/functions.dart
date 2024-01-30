import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:resoce/core/colors/color_app.dart';

//
// activer la rotation
void enableRotation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.landscapeLeft,
    // DeviceOrientation.landscapeRight,
  ]);
}

// formater la date et l'heure
String formatDate(String dateMongoDB) {
  DateTime dateTime = DateTime.parse(dateMongoDB);
  String heure = dateTime.hour.toString().padLeft(2, '0');
  String minutes = dateTime.minute.toString().padLeft(2, '0');
  return '$heure:$minutes';
}

//
// mettre le premier caract en MAJ
String capitalizeText(String text) {
  if (text.isEmpty) {
    return text;
  }

  // Capitalize the first letter and convert the rest to lowercase
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}

//
// foncttion pour valider l'id input sign
dynamic validateIdInput(String value) {
  bool validId(String id) {
    return id.length >= 7;
  }

  if (value.isEmpty) {
    return capitalizeText('field_required'.tr);
  } else if (!validId(value)) {
    return capitalizeText("invalid_identifier".tr);
  }
}

//
// verifier le mot de passe (input sur la page sigin)
dynamic validatePasswordInput(String password) {
  if (password.isEmpty) {
    return capitalizeText("password_required".tr);
  }
}

// coleur du safearea tout blanc
colorSafe() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.background,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

colorSafeWhite() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.background,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}

// couleur defauth theme white
