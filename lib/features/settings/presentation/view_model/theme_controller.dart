import 'package:ecommerce_supbase/core/utils/services/database/share_Prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  bool isDark = false;
  final prefs = AppPrefs();

  @override
  void onInit() {
    super.onInit();
    loadTheme();
  }

  Future<void> loadTheme() async {
    final cachedValue = prefs.getBool('isDark');
    isDark = cachedValue ?? false;
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    update();
  }

  Future<void> changeTheme(val) async {
    isDark = val;
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    update();
  }
}
