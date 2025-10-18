import 'package:flutter/material.dart';

/// 🎨 ملف الألوان الرئيسي للتطبيق
/// استخدمه لتوحيد الألوان عبر جميع الشاشات.
/// مثال:
/// Container(color: AppColors.primary)
/// Text("Hello", style: TextStyle(color: AppColors.textDark))

class AppColors {

  static const Color primary = Color(0xFF0066FF); 
  static const Color secondary = Color(0xFFFFC107); 
  static const Color accent = Color(0xFF00C853); 


  static const Color textDark = Color(0xFF212121);
  static const Color textLight = Color(0xFF757575);
  static const Color textWhite = Colors.white;


  static const Color background = Color(0xFFF9F9F9);
  static const Color card = Color(0xFFFFFFFF);
  static const Color inputFill = Color(0xFFF3F4F6);


  static const Color success = Color(0xFF4CAF50); 
  static const Color warning = Color(0xFFFF9800); 
  static const Color error = Color(0xFFF44336); 
  static const Color info = Color(0xFF2196F3); 


  static const Color border = Color(0xFFE0E0E0);
  static const Color shadow = Color(0x1A000000); 

  static const Color darkBackground = Color(0xFF121212);
  static const Color darkCard = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFE0E0E0);
}
