import 'package:ecommerce_supbase/core/utils/constants/app_constant.dart';
import 'package:ecommerce_supbase/core/utils/constants/app_strings.dart';
import 'package:ecommerce_supbase/core/utils/routes/routes.dart';
import 'package:ecommerce_supbase/core/utils/services/database/share_Prefs.dart';
import 'package:ecommerce_supbase/core/utils/widgets/custom_material_button.dart';
import 'package:ecommerce_supbase/features/onboarding/presentation/view_model/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionsButtonsNavi extends StatelessWidget {
  const SectionsButtonsNavi({super.key, required this.controller});

  final OnBoardingViewModel controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (controller.currentIndex != 0)
          TextButton(
            onPressed: () {
              controller.onboardingController.previousPage(
                duration: const Duration(milliseconds: 750),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            child: Text(
              AppStrings.back,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'Rubik',
                fontSize: 25.0,
                color: Colors.grey,
              ),
            ),
          ),
        const Spacer(),
        CustomMaterialButton(
          text: controller.isLast ? AppStrings.getStarted : AppStrings.next,
          onPressed: () {
            if (controller.isLast) {
              final prefs = AppPrefs();
              prefs.setBool(kOnBoardingComplete, true).then((value) {
                Get.offAllNamed(AppRoutes.login);
              });
            } else {
              controller.onboardingController.nextPage(
                duration: const Duration(milliseconds: 750),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            }
          },
        ),
      ],
    );
  }
}
