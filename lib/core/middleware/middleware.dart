import 'package:ecommerce_supbase/core/utils/constants/app_constant.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/database/share_Prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthMiddleWare extends GetMiddleware {

  final prefs = AppPrefs();

  @override
  @override
  RouteSettings? redirect(String? route) {
    Future.delayed(const Duration(seconds: 3), () {
      if (prefs.getBool(kOnBoardingComplete) == true) {
        Get.offNamed(AppRoutes.login);
      } else {
        Get.offNamed(AppRoutes.onboarding);
      }
    });
    return null; // null = خليه يفتح splash مؤقتًا
  }

}