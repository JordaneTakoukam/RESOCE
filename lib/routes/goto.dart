import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Par défaut, on utilise la transition de droite à gauche.
GetPage goTo({
  required String name,
  required Widget page,
  int transitionDuration = 250,
  Bindings? binding,
  Transition transition = Transition.rightToLeft,
}) {
  return GetPage(
    name: name,
    page: () => page,
    transitionDuration: Duration(milliseconds: transitionDuration),
    transition: transition,
    binding: binding,
  );
}
