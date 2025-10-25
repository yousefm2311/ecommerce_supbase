// ignore_for_file: must_be_immutable
import 'package:ecommerce_supbase/core/utils/constants/app_colors.dart';
import 'package:ecommerce_supbase/features/onboarding/data/models/onboarding_model.dart';
import 'package:ecommerce_supbase/features/onboarding/presentation/view/widgets/onboarding_page_view.dart';
import 'package:ecommerce_supbase/features/onboarding/presentation/view/widgets/section_bottons_navi_onboarding.dart';
import 'package:ecommerce_supbase/features/onboarding/presentation/view_model/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends GetView<OnBoardingViewModel> {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              const OnBoardingPageView(),
              const SizedBox(height: 30.0),
              GetBuilder<OnBoardingViewModel>(
                id: "indicator",
                builder: (controller) => SmoothPageIndicator(
                  controller: controller.onboardingController,
                  count: onboardingData.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: AppColors.primaryDark,
                    dotHeight: 4,
                    dotWidth: 10,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              GetBuilder<OnBoardingViewModel>(
                id: "buttons",
                builder: (controller) =>
                    SectionsButtonsNavi(controller: controller),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
