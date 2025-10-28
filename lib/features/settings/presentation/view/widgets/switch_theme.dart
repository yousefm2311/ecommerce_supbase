// ignore_for_file: camel_case_types

import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/services/database/share_Prefs.dart';
import 'package:ecommerce_supbase/core/utils/widgets/card_details.dart';
import 'package:ecommerce_supbase/features/settings/presentation/view_model/theme_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Switch_Theme extends StatelessWidget {
  Switch_Theme({super.key});

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: AppStrings.theme,
      subTitle: AppStrings.ligth,
      trailing: GetBuilder<ThemeController>(
        builder: (context) => CupertinoSwitch(
          value: themeController.isDark,
          onChanged: (value) async {
            await themeController.changeTheme(value);
            final prefs = AppPrefs();
            await prefs.setBool('isDark', value);
            Get.snackbar(
              'تم تغيير الثيم',
              value ? 'تم تفعيل الوضع الداكن 🌙' : 'تم تفعيل الوضع الفاتح ☀️',
              backgroundColor: value ? AppColors.success : AppColors.error,
              colorText: AppColors.white,
              snackPosition: SnackPosition.BOTTOM,
            );
            debugPrint('Theme saved: ${prefs.getBool("isDark")}');
          },
        ),
      ),
    );
  }
}

class Colors {}
