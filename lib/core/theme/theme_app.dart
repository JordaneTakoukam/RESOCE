import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resoce/core/colors/color_app.dart';

class AppTheme {
  // theme clair
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    textTheme: GoogleFonts.nunitoTextTheme(), // Utilisez nunitoTextTheme
    scaffoldBackgroundColor: AppColors.backgroundColor,
  );

  // theme sombre
  // static ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.blueGrey,
  //   colorScheme: ColorScheme.fromSwatch().copyWith(
  //     secondary: Colors.blueAccent,
  //   ),
  // );
}
