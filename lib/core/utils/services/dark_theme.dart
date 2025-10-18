// ignore_for_file: file_names

import 'package:ecommerce_supbase/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  /// ☀️ Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF1976D2),
      secondary: Color(0xFF42A5F5),
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
      error: Colors.redAccent,
    ),

    // 🔤 النصوص + الخط
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme)
        .apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
          decorationColor: Colors.black,
        ),

    // 🔘 الأزرار
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.whiteBold,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),

    // ✏️ الحقول
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade100,
      hintStyle: AppTextStyles.small,
      labelStyle: const TextStyle(color: Colors.black87),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),

    // 📱 AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: AppTextStyles.title,
      iconTheme: IconThemeData(color: Colors.black87),
    ),

    // 📜 BottomSheet
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),

    // 🧱 Divider
    dividerTheme: const DividerThemeData(color: Colors.grey, thickness: 0.8),

    // 🔤 الكتابة في الحقول بلون أسود
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFF1976D2),
      selectionColor: Color(0xFF42A5F5),
      selectionHandleColor: Color(0xFF42A5F5),
    ),
  );

  /// 🌙 Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF90CAF9),
      secondary: Color(0xFF64B5F6),
      surface: Color(0xFF1E1E1E),
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      error: Colors.redAccent,
    ),

    // 🔤 النصوص + الخط (لون أبيض)
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        .apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
          decorationColor: Colors.white,
        ).copyWith(
      bodyLarge: const TextStyle(color: Colors.white),
      bodyMedium: const TextStyle(color: Colors.white),
      bodySmall: const TextStyle(color: Colors.white),
    ),

    // 🔘 الأزرار
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF64B5F6),
        foregroundColor: Colors.black,
        textStyle: AppTextStyles.body.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),

    // ✏️ الحقول (TextFields)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E1E1E),
      hintStyle: const TextStyle(color: Colors.grey),
      labelStyle: const TextStyle(color: Colors.white70),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),

    // ✨ أهم جزء: يخلّي النص داخل TextField أبيض


    // 🎨 ألوان التحديد والمؤشر
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.lightBlueAccent,
      selectionColor: Color(0xFF64B5F6),
      selectionHandleColor: Color(0xFF64B5F6),
    ),

    // 📱 AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: AppTextStyles.title.copyWith(color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white),
    ),

    // 📜 BottomSheet
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xFF1E1E1E),
    ),

    // 🧱 Divider
    dividerTheme: const DividerThemeData(color: Colors.white24, thickness: 0.8),
  );
}
