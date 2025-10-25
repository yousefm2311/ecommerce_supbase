// ignore_for_file: file_names


import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  ThemeData customLightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.primary,
    ),
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
    bottomSheetTheme: const BottomSheetThemeData(),
  );
}
